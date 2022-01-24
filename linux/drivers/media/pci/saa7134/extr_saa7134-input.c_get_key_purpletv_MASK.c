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
typedef  unsigned char u32 ;
struct IR_i2c {int /*<<< orphan*/  c; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int EIO ; 
 int RC_PROTO_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IR_i2c*,char*) ; 

__attribute__((used)) static int FUNC2(struct IR_i2c *ir, enum rc_proto *protocol,
			    u32 *scancode, u8 *toggle)
{
	int rc;
	unsigned char b;

	/* poll IR chip */
	rc = FUNC0(ir->c, &b, 1);
	if (rc != 1) {
		FUNC1(ir, "read error\n");
		if (rc < 0)
			return rc;
		return -EIO;
	}

	/* no button press */
	if (b==0)
		return 0;

	/* repeating */
	if (b & 0x80)
		return 1;

	*protocol = RC_PROTO_UNKNOWN;
	*scancode = b;
	*toggle = 0;
	return 1;
}