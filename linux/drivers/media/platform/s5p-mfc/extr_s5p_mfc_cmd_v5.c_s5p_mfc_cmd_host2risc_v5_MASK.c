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
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_cmd_args {int* arg; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MFC_BW_TIMEOUT ; 
 int S5P_FIMV_H2R_CMD_EMPTY ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_ARG1 ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_ARG2 ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_ARG3 ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_ARG4 ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_CMD ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_dev *dev, int cmd,
				struct s5p_mfc_cmd_args *args)
{
	int cur_cmd;
	unsigned long timeout;

	timeout = jiffies + FUNC3(MFC_BW_TIMEOUT);
	/* wait until host to risc command register becomes 'H2R_CMD_EMPTY' */
	do {
		if (FUNC4(jiffies, timeout)) {
			FUNC0("Timeout while waiting for hardware\n");
			return -EIO;
		}
		cur_cmd = FUNC1(dev, S5P_FIMV_HOST2RISC_CMD);
	} while (cur_cmd != S5P_FIMV_H2R_CMD_EMPTY);
	FUNC2(dev, args->arg[0], S5P_FIMV_HOST2RISC_ARG1);
	FUNC2(dev, args->arg[1], S5P_FIMV_HOST2RISC_ARG2);
	FUNC2(dev, args->arg[2], S5P_FIMV_HOST2RISC_ARG3);
	FUNC2(dev, args->arg[3], S5P_FIMV_HOST2RISC_ARG4);
	/* Issue the command */
	FUNC2(dev, cmd, S5P_FIMV_HOST2RISC_CMD);
	return 0;
}