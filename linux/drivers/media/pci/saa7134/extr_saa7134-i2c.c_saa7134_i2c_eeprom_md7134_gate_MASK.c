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
struct saa7134_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct saa7134_dev *dev)
{
	u8 subaddr = 0x7, dmdregval;
	u8 data[2];
	int ret;
	struct i2c_msg i2cgatemsg_r[] = { {.addr = 0x08, .flags = 0,
					   .buf = &subaddr, .len = 1},
					  {.addr = 0x08,
					   .flags = I2C_M_RD,
					   .buf = &dmdregval, .len = 1}
					};
	struct i2c_msg i2cgatemsg_w[] = { {.addr = 0x08, .flags = 0,
					   .buf = data, .len = 2} };

	ret = FUNC0(&dev->i2c_adap, i2cgatemsg_r, 2);
	if ((ret == 2) && (dmdregval & 0x2)) {
		FUNC1("%s: DVB-T demod i2c gate was left open\n",
			 dev->name);

		data[0] = subaddr;
		data[1] = (dmdregval & ~0x2);
		if (FUNC0(&dev->i2c_adap, i2cgatemsg_w, 1) != 1)
			FUNC2("%s: EEPROM i2c gate close failure\n",
			       dev->name);
	}
}