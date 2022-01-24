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
struct s5p_mfc_dev {scalar_t__ risc_on; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  MFC_BW_TIMEOUT ; 
 scalar_t__ S5P_FIMV_FW_VERSION_V6 ; 
 scalar_t__ S5P_FIMV_HOST2RISC_CMD_V6 ; 
 int /*<<< orphan*/  S5P_FIMV_MC_STATUS ; 
 scalar_t__ S5P_FIMV_MFC_RESET_V6 ; 
 scalar_t__ S5P_FIMV_REG_CLEAR_BEGIN_V6 ; 
 int S5P_FIMV_REG_CLEAR_COUNT_V6 ; 
 scalar_t__ S5P_FIMV_RISC2HOST_CMD_V6 ; 
 scalar_t__ S5P_FIMV_RISC_ON_V6 ; 
 scalar_t__ S5P_FIMV_SW_RESET ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 unsigned int FUNC6 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_dev*,int,scalar_t__) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

int FUNC11(struct s5p_mfc_dev *dev)
{
	unsigned int mc_status;
	unsigned long timeout;
	int i;

	FUNC3();

	if (FUNC0(dev)) {
		/* Zero Initialization of MFC registers */
		FUNC7(dev, 0, S5P_FIMV_RISC2HOST_CMD_V6);
		FUNC7(dev, 0, S5P_FIMV_HOST2RISC_CMD_V6);
		FUNC7(dev, 0, S5P_FIMV_FW_VERSION_V6);

		for (i = 0; i < S5P_FIMV_REG_CLEAR_COUNT_V6; i++)
			FUNC7(dev, 0, S5P_FIMV_REG_CLEAR_BEGIN_V6 + (i*4));

		/* check bus reset control before reset */
		if (dev->risc_on)
			if (FUNC9(dev))
				return -EIO;
		/* Reset
		 * set RISC_ON to 0 during power_on & wake_up.
		 * V6 needs RISC_ON set to 0 during reset also.
		 */
		if ((!dev->risc_on) || (!FUNC1(dev)))
			FUNC7(dev, 0, S5P_FIMV_RISC_ON_V6);

		FUNC7(dev, 0x1FFF, S5P_FIMV_MFC_RESET_V6);
		FUNC7(dev, 0, S5P_FIMV_MFC_RESET_V6);
	} else {
		/* Stop procedure */
		/*  reset RISC */
		FUNC7(dev, 0x3f6, S5P_FIMV_SW_RESET);
		/*  All reset except for MC */
		FUNC7(dev, 0x3e2, S5P_FIMV_SW_RESET);
		FUNC2(10);

		timeout = jiffies + FUNC8(MFC_BW_TIMEOUT);
		/* Check MC status */
		do {
			if (FUNC10(jiffies, timeout)) {
				FUNC5("Timeout while resetting MFC\n");
				return -EIO;
			}

			mc_status = FUNC6(dev, S5P_FIMV_MC_STATUS);

		} while (mc_status & 0x3);

		FUNC7(dev, 0x0, S5P_FIMV_SW_RESET);
		FUNC7(dev, 0x3fe, S5P_FIMV_SW_RESET);
	}

	FUNC4();
	return 0;
}