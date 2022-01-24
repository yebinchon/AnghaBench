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
typedef  int u8 ;
typedef  int u16 ;
struct mii_bus {struct i2c_adapter* priv; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
	struct i2c_adapter *i2c = bus->priv;
	struct i2c_msg msg;
	int ret;
	u8 data[3];

	if (!FUNC1(phy_id))
		return 0;

	data[0] = reg;
	data[1] = val >> 8;
	data[2] = val;

	msg.addr = FUNC0(phy_id);
	msg.flags = 0;
	msg.len = 3;
	msg.buf = data;

	ret = FUNC2(i2c, &msg, 1);

	return ret < 0 ? ret : 0;
}