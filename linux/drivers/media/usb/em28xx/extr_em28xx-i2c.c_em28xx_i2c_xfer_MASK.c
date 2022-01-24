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
struct i2c_msg {int addr; char* len; int flags; int buf; } ;
struct i2c_adapter {struct em28xx_i2c_bus* algo_data; } ;
struct em28xx_i2c_bus {unsigned int bus; scalar_t__ algo_type; struct em28xx* dev; } ;
struct em28xx {unsigned int cur_i2c_bus; int /*<<< orphan*/  i2c_bus_lock; scalar_t__ disconnected; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ EM2874_I2C_SECONDARY_BUS_SELECT ; 
 scalar_t__ EM28XX_I2C_ALGO_EM28XX ; 
 int /*<<< orphan*/  EM28XX_R06_I2C_CLK ; 
 int ENODEV ; 
 int ENXIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct em28xx_i2c_bus*,int) ; 
 int FUNC3 (struct em28xx_i2c_bus*,struct i2c_msg) ; 
 int FUNC4 (struct em28xx_i2c_bus*,struct i2c_msg,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *i2c_adap,
			   struct i2c_msg msgs[], int num)
{
	struct em28xx_i2c_bus *i2c_bus = i2c_adap->algo_data;
	struct em28xx *dev = i2c_bus->dev;
	unsigned int bus = i2c_bus->bus;
	int addr, rc, i;
	u8 reg;

	/*
	 * prevent i2c xfer attempts after device is disconnected
	 * some fe's try to do i2c writes/reads from their release
	 * interfaces when called in disconnect path
	 */
	if (dev->disconnected)
		return -ENODEV;

	if (!FUNC5(&dev->i2c_bus_lock))
		return -EAGAIN;

	/* Switch I2C bus if needed */
	if (bus != dev->cur_i2c_bus &&
	    i2c_bus->algo_type == EM28XX_I2C_ALGO_EM28XX) {
		if (bus == 1)
			reg = EM2874_I2C_SECONDARY_BUS_SELECT;
		else
			reg = 0;
		FUNC1(dev, EM28XX_R06_I2C_CLK, reg,
				      EM2874_I2C_SECONDARY_BUS_SELECT);
		dev->cur_i2c_bus = bus;
	}

	for (i = 0; i < num; i++) {
		addr = msgs[i].addr << 1;
		if (!msgs[i].len) {
			/*
			 * no len: check only for device presence
			 * This code is only called during device probe.
			 */
			rc = FUNC2(i2c_bus, addr);

			if (rc == -ENXIO)
				rc = -ENODEV;
		} else if (msgs[i].flags & I2C_M_RD) {
			/* read bytes */
			rc = FUNC3(i2c_bus, msgs[i]);
		} else {
			/* write bytes */
			rc = FUNC4(i2c_bus, msgs[i], i == num - 1);
		}

		if (rc < 0)
			goto error;

		FUNC0(2, "%s %s addr=%02x len=%d: %*ph\n",
			(msgs[i].flags & I2C_M_RD) ? "read" : "write",
			i == num - 1 ? "stop" : "nonstop",
			addr, msgs[i].len,
			msgs[i].len, msgs[i].buf);
	}

	FUNC6(&dev->i2c_bus_lock);
	return num;

error:
	FUNC0(2, "%s %s addr=%02x len=%d: %sERROR: %i\n",
		(msgs[i].flags & I2C_M_RD) ? "read" : "write",
		i == num - 1 ? "stop" : "nonstop",
		addr, msgs[i].len,
		(rc == -ENODEV) ? "no device " : "",
		rc);

	FUNC6(&dev->i2c_bus_lock);
	return rc;
}