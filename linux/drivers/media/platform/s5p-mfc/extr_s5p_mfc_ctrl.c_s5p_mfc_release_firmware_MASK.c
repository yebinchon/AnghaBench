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
struct s5p_mfc_dev {int fw_get_done; int /*<<< orphan*/  fw_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5p_mfc_dev*,int /*<<< orphan*/ *) ; 

int FUNC1(struct s5p_mfc_dev *dev)
{
	/* Before calling this function one has to make sure
	 * that MFC is no longer processing */
	FUNC0(dev, &dev->fw_buf);
	dev->fw_get_done = false;
	return 0;
}