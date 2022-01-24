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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MFC_BW_TIMEOUT ; 
 int /*<<< orphan*/  S5P_FIMV_MFC_BUS_RESET_CTRL ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_dev *dev)
{
	unsigned int status;
	unsigned long timeout;

	/* Reset */
	FUNC2(dev, 0x1, S5P_FIMV_MFC_BUS_RESET_CTRL);
	timeout = jiffies + FUNC3(MFC_BW_TIMEOUT);
	/* Check bus status */
	do {
		if (FUNC4(jiffies, timeout)) {
			FUNC0("Timeout while resetting MFC.\n");
			return -EIO;
		}
		status = FUNC1(dev, S5P_FIMV_MFC_BUS_RESET_CTRL);
	} while ((status & 0x2) == 0);
	return 0;
}