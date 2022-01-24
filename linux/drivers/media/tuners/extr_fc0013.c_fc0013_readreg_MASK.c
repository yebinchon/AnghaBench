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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct fc0013_priv {int /*<<< orphan*/  i2c; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct fc0013_priv *priv, u8 reg, u8 *val)
{
	struct i2c_msg msg[2] = {
		{ .addr = priv->addr, .flags = 0, .buf = &reg, .len = 1 },
		{ .addr = priv->addr, .flags = I2C_M_RD, .buf = val, .len = 1 },
	};

	if (FUNC1(priv->i2c, msg, 2) != 2) {
		FUNC0("I2C read reg failed, reg: %02x", reg);
		return -EREMOTEIO;
	}
	return 0;
}