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
typedef  void* u8 ;
struct sfp {int /*<<< orphan*/  i2c; } ;
struct i2c_msg {int len; void** buf; scalar_t__ flags; void* addr; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,size_t) ; 

__attribute__((used)) static int FUNC5(struct sfp *sfp, bool a2, u8 dev_addr, void *buf,
	size_t len)
{
	struct i2c_msg msgs[1];
	u8 bus_addr = a2 ? 0x51 : 0x50;
	int ret;

	msgs[0].addr = bus_addr;
	msgs[0].flags = 0;
	msgs[0].len = 1 + len;
	msgs[0].buf = FUNC3(1 + len, GFP_KERNEL);
	if (!msgs[0].buf)
		return -ENOMEM;

	msgs[0].buf[0] = dev_addr;
	FUNC4(&msgs[0].buf[1], buf, len);

	ret = FUNC1(sfp->i2c, msgs, FUNC0(msgs));

	FUNC2(msgs[0].buf);

	if (ret < 0)
		return ret;

	return ret == FUNC0(msgs) ? len : 0;
}