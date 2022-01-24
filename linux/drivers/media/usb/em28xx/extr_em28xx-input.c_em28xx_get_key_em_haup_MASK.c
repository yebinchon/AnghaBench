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
typedef  int u32 ;
struct i2c_client {int dummy; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int RC_PROTO_RC5 ; 
 int FUNC0 (unsigned char) ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c_dev,
				  enum rc_proto *protocol, u32 *scancode)
{
	unsigned char buf[2];
	int size;

	/* poll IR chip */
	size = FUNC1(i2c_dev, buf, sizeof(buf));

	if (size != 2)
		return -EIO;

	/* Does eliminate repeated parity code */
	if (buf[1] == 0xff)
		return 0;

	/*
	 * Rearranges bits to the right order.
	 * The bit order were determined experimentally by using
	 * The original Hauppauge Grey IR and another RC5 that uses addr=0x08
	 * The RC5 code has 14 bits, but we've experimentally determined
	 * the meaning for only 11 bits.
	 * So, the code translation is not complete. Yet, it is enough to
	 * work with the provided RC5 IR.
	 */
	*protocol = RC_PROTO_RC5;
	*scancode = (FUNC0(buf[1]) & 0x1f) << 8 | FUNC0(buf[0]) >> 2;
	return 1;
}