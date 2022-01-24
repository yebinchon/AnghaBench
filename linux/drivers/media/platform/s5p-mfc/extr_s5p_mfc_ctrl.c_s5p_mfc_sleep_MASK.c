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
struct s5p_mfc_dev {scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; int /*<<< orphan*/  mfc_cmds; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ S5P_MFC_R2H_CMD_SLEEP_RET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC7 (struct s5p_mfc_dev*,scalar_t__) ; 
 int /*<<< orphan*/  sleep_cmd ; 

int FUNC8(struct s5p_mfc_dev *dev)
{
	int ret;

	FUNC0();
	FUNC5();
	FUNC3(dev);
	ret = FUNC6(dev->mfc_cmds, sleep_cmd, dev);
	if (ret) {
		FUNC2("Failed to send command to MFC - timeout\n");
		return ret;
	}
	if (FUNC7(dev, S5P_MFC_R2H_CMD_SLEEP_RET)) {
		FUNC2("Failed to sleep\n");
		return -EIO;
	}
	FUNC4();
	dev->int_cond = 0;
	if (dev->int_err != 0 || dev->int_type !=
						S5P_MFC_R2H_CMD_SLEEP_RET) {
		/* Failure. */
		FUNC2("Failed to sleep - error: %d int: %d\n", dev->int_err,
								dev->int_type);
		return -EIO;
	}
	FUNC1();
	return ret;
}