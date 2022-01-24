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
struct TYPE_2__ {int /*<<< orphan*/  trace_size; int /*<<< orphan*/  trace; int /*<<< orphan*/  lock; } ;
struct fjes_hw {scalar_t__ max_epid; scalar_t__ my_epid; TYPE_1__ hw_info; int /*<<< orphan*/  rx_status_lock; int /*<<< orphan*/  epstop_task; int /*<<< orphan*/  update_zone_task; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FJES_DEBUG_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ICTL_MASK_ALL ; 
 int /*<<< orphan*/  fjes_hw_epstop_task ; 
 scalar_t__ FUNC1 (struct fjes_hw*) ; 
 scalar_t__ FUNC2 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct fjes_hw*) ; 
 int FUNC4 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct fjes_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct fjes_hw*) ; 
 int /*<<< orphan*/  fjes_hw_update_zone_task ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct fjes_hw *hw)
{
	int ret;

	hw->base = FUNC3(hw);
	if (!hw->base)
		return -EIO;

	ret = FUNC4(hw);
	if (ret)
		return ret;

	FUNC5(hw, REG_ICTL_MASK_ALL, true);

	FUNC0(&hw->update_zone_task, fjes_hw_update_zone_task);
	FUNC0(&hw->epstop_task, fjes_hw_epstop_task);

	FUNC7(&hw->hw_info.lock);
	FUNC8(&hw->rx_status_lock);

	hw->max_epid = FUNC1(hw);
	hw->my_epid = FUNC2(hw);

	if ((hw->max_epid == 0) || (hw->my_epid >= hw->max_epid))
		return -ENXIO;

	ret = FUNC6(hw);

	hw->hw_info.trace = FUNC9(FJES_DEBUG_BUFFER_SIZE);
	hw->hw_info.trace_size = FJES_DEBUG_BUFFER_SIZE;

	return ret;
}