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
struct s5p_mfc_dev {scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; scalar_t__ risc_on; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 scalar_t__ S5P_MFC_R2H_CMD_WAKEUP_RET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct s5p_mfc_dev*) ; 
 int FUNC10 (struct s5p_mfc_dev*) ; 
 int FUNC11 (struct s5p_mfc_dev*) ; 
 int FUNC12 (struct s5p_mfc_dev*) ; 

int FUNC13(struct s5p_mfc_dev *dev)
{
	int ret;

	FUNC2();
	/* 0. MFC reset */
	FUNC1(2, "MFC reset..\n");
	FUNC8();
	dev->risc_on = 0;
	ret = FUNC10(dev);
	if (ret) {
		FUNC4("Failed to reset MFC - timeout\n");
		FUNC7();
		return ret;
	}
	FUNC1(2, "Done MFC reset..\n");
	/* 1. Set DRAM base Addr */
	FUNC9(dev);
	/* 2. Initialize registers of channel I/F */
	FUNC6(dev);
	FUNC5(dev);
	/* 3. Send MFC wakeup command and wait for completion*/
	if (FUNC0(dev))
		ret = FUNC11(dev);
	else
		ret = FUNC12(dev);

	FUNC7();
	if (ret)
		return ret;

	dev->int_cond = 0;
	if (dev->int_err != 0 || dev->int_type !=
						S5P_MFC_R2H_CMD_WAKEUP_RET) {
		/* Failure. */
		FUNC4("Failed to wakeup - error: %d int: %d\n", dev->int_err,
								dev->int_type);
		return -EIO;
	}
	FUNC3();
	return 0;
}