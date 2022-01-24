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
struct aq_hw_s {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_HW_FLAG_ERR_HW ; 
 int /*<<< orphan*/  AQ_HW_FLAG_ERR_UNPLUG ; 
 int EIO ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct aq_hw_s *hw)
{
	int err = 0;

	if (FUNC0(&hw->flags, AQ_HW_FLAG_ERR_UNPLUG)) {
		err = -ENXIO;
		goto err_exit;
	}
	if (FUNC0(&hw->flags, AQ_HW_FLAG_ERR_HW)) {
		err = -EIO;
		goto err_exit;
	}

err_exit:
	return err;
}