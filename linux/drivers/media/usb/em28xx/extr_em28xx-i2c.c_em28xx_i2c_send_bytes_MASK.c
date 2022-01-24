#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct em28xx {int (* em28xx_write_regs_req ) (struct em28xx*,int,int,int /*<<< orphan*/ *,int) ;int (* em28xx_read_reg ) (struct em28xx*,int) ;TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 unsigned long FUNC2 (struct em28xx*) ; 
 unsigned long jiffies ; 
 int FUNC3 (struct em28xx*,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct em28xx*,int) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct em28xx *dev, u16 addr, u8 *buf,
				 u16 len, int stop)
{
	unsigned long timeout = jiffies + FUNC2(dev);
	int ret;

	if (len < 1 || len > 64)
		return -EOPNOTSUPP;
	/*
	 * NOTE: limited by the USB ctrl message constraints
	 * Zero length reads always succeed, even if no device is connected
	 */

	/* Write to i2c device */
	ret = dev->em28xx_write_regs_req(dev, stop ? 2 : 3, addr, buf, len);
	if (ret != len) {
		if (ret < 0) {
			FUNC0(&dev->intf->dev,
				 "writing to i2c device at 0x%x failed (error=%i)\n",
				 addr, ret);
			return ret;
		}
		FUNC0(&dev->intf->dev,
			 "%i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
				len, addr, ret);
		return -EIO;
	}

	/* wait for completion */
	while (FUNC5(timeout)) {
		ret = dev->em28xx_read_reg(dev, 0x05);
		if (ret == 0) /* success */
			return len;
		if (ret == 0x10) {
			FUNC1(1, "I2C ACK error on writing to addr 0x%02x\n",
				addr);
			return -ENXIO;
		}
		if (ret < 0) {
			FUNC0(&dev->intf->dev,
				 "failed to get i2c transfer status from bridge register (error=%i)\n",
				 ret);
			return ret;
		}
		FUNC6(5000, 6000);
		/*
		 * NOTE: do we really have to wait for success ?
		 * Never seen anything else than 0x00 or 0x10
		 * (even with high payload) ...
		 */
	}

	if (ret == 0x02 || ret == 0x04) {
		/* NOTE: these errors seem to be related to clock stretching */
		FUNC1(0,
			"write to i2c device at 0x%x timed out (status=%i)\n",
			addr, ret);
		return -ETIMEDOUT;
	}

	FUNC0(&dev->intf->dev,
		 "write to i2c device at 0x%x failed with unknown error (status=%i)\n",
		 addr, ret);
	return -EIO;
}