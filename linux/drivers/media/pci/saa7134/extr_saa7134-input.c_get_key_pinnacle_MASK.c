#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  unsigned int u32 ;
struct IR_i2c {unsigned int old; int /*<<< orphan*/  c; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 int EIO ; 
 int RC_PROTO_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IR_i2c*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct IR_i2c *ir, enum rc_proto *protocol,
			    u32 *scancode, u8 *toggle, int parity_offset,
			    int marker, int code_modulo)
{
	int rc;
	unsigned char b[4];
	unsigned int start = 0,parity = 0,code = 0;

	/* poll IR chip */
	rc = FUNC1(ir->c, b, 4);
	if (rc != 4) {
		FUNC2(ir, "read error\n");
		if (rc < 0)
			return rc;
		return -EIO;
	}

	for (start = 0; start < FUNC0(b); start++) {
		if (b[start] == marker) {
			code=b[(start+parity_offset + 1) % 4];
			parity=b[(start+parity_offset) % 4];
		}
	}

	/* Empty Request */
	if (parity == 0)
		return 0;

	/* Repeating... */
	if (ir->old == parity)
		return 0;

	ir->old = parity;

	/* drop special codes when a key is held down a long time for the grey controller
	   In this case, the second bit of the code is asserted */
	if (marker == 0xfe && (code & 0x40))
		return 0;

	code %= code_modulo;

	*protocol = RC_PROTO_UNKNOWN;
	*scancode = code;
	*toggle = 0;

	FUNC2(ir, "Pinnacle PCTV key %02x\n", code);
	return 1;
}