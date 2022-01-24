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
struct smsc911x_data {int generation; int idrev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int HW_CFG ; 
 unsigned int HW_CFG_SRST_ ; 
 int LAN9250 ; 
 unsigned int RESET_CTL ; 
 unsigned int RESET_CTL_DIGITAL_RST_ ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct smsc911x_data*) ; 
 int FUNC2 (struct smsc911x_data*) ; 
 int FUNC3 (struct smsc911x_data*) ; 
 unsigned int FUNC4 (struct smsc911x_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct smsc911x_data *pdata)
{
	unsigned int timeout;
	unsigned int temp;
	int ret;
	unsigned int reset_offset = HW_CFG;
	unsigned int reset_mask = HW_CFG_SRST_;

	/*
	 * Make sure to power-up the PHY chip before doing a reset, otherwise
	 * the reset fails.
	 */
	ret = FUNC3(pdata);
	if (ret) {
		FUNC0(pdata, drv, "Failed to power-up the PHY chip");
		return ret;
	}

	/*
	 * LAN9210/LAN9211/LAN9220/LAN9221 chips have an internal PHY that
	 * are initialized in a Energy Detect Power-Down mode that prevents
	 * the MAC chip to be software reseted. So we have to wakeup the PHY
	 * before.
	 */
	if (pdata->generation == 4) {
		ret = FUNC1(pdata);

		if (ret) {
			FUNC0(pdata, drv, "Failed to wakeup the PHY chip");
			return ret;
		}
	}

	if ((pdata->idrev & 0xFFFF0000) == LAN9250) {
		/* special reset for  LAN9250 */
		reset_offset = RESET_CTL;
		reset_mask = RESET_CTL_DIGITAL_RST_;
	}

	/* Reset the LAN911x */
	FUNC5(pdata, reset_offset, reset_mask);

	/* verify reset bit is cleared */
	timeout = 10;
	do {
		FUNC6(10);
		temp = FUNC4(pdata, reset_offset);
	} while ((--timeout) && (temp & reset_mask));

	if (FUNC7(temp & reset_mask)) {
		FUNC0(pdata, drv, "Failed to complete reset");
		return -EIO;
	}

	if (pdata->generation == 4) {
		ret = FUNC2(pdata);

		if (ret) {
			FUNC0(pdata, drv, "Failed to wakeup the PHY chip");
			return ret;
		}
	}

	return 0;
}