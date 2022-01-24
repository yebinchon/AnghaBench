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
struct TYPE_2__ {int /*<<< orphan*/  virt; } ;
struct s5p_mfc_dev {int risc_on; scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; int /*<<< orphan*/  mfc_cmds; TYPE_1__ fw_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC1 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_FW_VERSION ; 
 int /*<<< orphan*/  S5P_FIMV_FW_VERSION_V6 ; 
 int /*<<< orphan*/  S5P_FIMV_MFC_CLOCK_OFF_V10 ; 
 int /*<<< orphan*/  S5P_FIMV_RISC_ON_V6 ; 
 int /*<<< orphan*/  S5P_FIMV_SW_RESET ; 
 scalar_t__ S5P_MFC_R2H_CMD_FW_STATUS_RET ; 
 scalar_t__ S5P_MFC_R2H_CMD_SYS_INIT_RET ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned int FUNC6 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct s5p_mfc_dev*) ; 
 int FUNC14 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC15 (struct s5p_mfc_dev*,scalar_t__) ; 
 int /*<<< orphan*/  sys_init_cmd ; 

int FUNC16(struct s5p_mfc_dev *dev)
{
	unsigned int ver;
	int ret;

	FUNC3();
	if (!dev->fw_buf.virt) {
		FUNC5("Firmware memory is not allocated.\n");
		return -EINVAL;
	}

	/* 0. MFC reset */
	FUNC2(2, "MFC reset..\n");
	FUNC11();
	dev->risc_on = 0;
	ret = FUNC14(dev);
	if (ret) {
		FUNC5("Failed to reset MFC - timeout\n");
		return ret;
	}
	FUNC2(2, "Done MFC reset..\n");
	/* 1. Set DRAM base Addr */
	FUNC13(dev);
	/* 2. Initialize registers of channel I/F */
	FUNC9(dev);
	/* 3. Release reset signal to the RISC */
	FUNC8(dev);
	if (FUNC1(dev)) {
		dev->risc_on = 1;
		FUNC7(dev, 0x1, S5P_FIMV_RISC_ON_V6);
	}
	else
		FUNC7(dev, 0x3ff, S5P_FIMV_SW_RESET);

	if (FUNC0(dev))
		FUNC7(dev, 0x0, S5P_FIMV_MFC_CLOCK_OFF_V10);

	FUNC2(2, "Will now wait for completion of firmware transfer\n");
	if (FUNC15(dev, S5P_MFC_R2H_CMD_FW_STATUS_RET)) {
		FUNC5("Failed to load firmware\n");
		FUNC14(dev);
		FUNC10();
		return -EIO;
	}
	FUNC8(dev);
	/* 4. Initialize firmware */
	ret = FUNC12(dev->mfc_cmds, sys_init_cmd, dev);
	if (ret) {
		FUNC5("Failed to send command to MFC - timeout\n");
		FUNC14(dev);
		FUNC10();
		return ret;
	}
	FUNC2(2, "Ok, now will wait for completion of hardware init\n");
	if (FUNC15(dev, S5P_MFC_R2H_CMD_SYS_INIT_RET)) {
		FUNC5("Failed to init hardware\n");
		FUNC14(dev);
		FUNC10();
		return -EIO;
	}
	dev->int_cond = 0;
	if (dev->int_err != 0 || dev->int_type !=
					S5P_MFC_R2H_CMD_SYS_INIT_RET) {
		/* Failure. */
		FUNC5("Failed to init firmware - error: %d int: %d\n",
						dev->int_err, dev->int_type);
		FUNC14(dev);
		FUNC10();
		return -EIO;
	}
	if (FUNC1(dev))
		ver = FUNC6(dev, S5P_FIMV_FW_VERSION_V6);
	else
		ver = FUNC6(dev, S5P_FIMV_FW_VERSION);

	FUNC2(2, "MFC F/W version : %02xyy, %02xmm, %02xdd\n",
		(ver >> 16) & 0xFF, (ver >> 8) & 0xFF, ver & 0xFF);
	FUNC10();
	FUNC4();
	return 0;
}