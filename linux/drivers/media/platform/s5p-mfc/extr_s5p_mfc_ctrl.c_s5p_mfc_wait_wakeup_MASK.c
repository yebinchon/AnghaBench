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
struct s5p_mfc_dev {int risc_on; int /*<<< orphan*/  mfc_cmds; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_RISC_ON_V6 ; 
 int /*<<< orphan*/  S5P_FIMV_SW_RESET ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_WAKEUP_RET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC4 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wakeup_cmd ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_dev *dev)
{
	int ret;

	/* Send MFC wakeup command */
	ret = FUNC3(dev->mfc_cmds, wakeup_cmd, dev);
	if (ret) {
		FUNC1("Failed to send command to MFC - timeout\n");
		return ret;
	}

	/* Release reset signal to the RISC */
	if (FUNC0(dev)) {
		dev->risc_on = 1;
		FUNC2(dev, 0x1, S5P_FIMV_RISC_ON_V6);
	} else {
		FUNC2(dev, 0x3ff, S5P_FIMV_SW_RESET);
	}

	if (FUNC4(dev, S5P_MFC_R2H_CMD_WAKEUP_RET)) {
		FUNC1("Failed to wakeup MFC\n");
		return -EIO;
	}
	return ret;
}