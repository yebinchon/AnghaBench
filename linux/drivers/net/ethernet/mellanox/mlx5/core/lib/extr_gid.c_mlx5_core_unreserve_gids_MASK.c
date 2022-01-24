#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int count; unsigned int start; } ;
struct TYPE_4__ {TYPE_1__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_2__ roce; int /*<<< orphan*/  intf_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_core_dev *dev, unsigned int count)
{
	FUNC0(FUNC2(MLX5_INTERFACE_STATE_UP, &dev->intf_state), "Unreserving GIDs when interfaces are up");
	FUNC0(count > dev->roce.reserved_gids.count, "Unreserving %u GIDs when only %u reserved",
	     count, dev->roce.reserved_gids.count);

	dev->roce.reserved_gids.start += count;
	dev->roce.reserved_gids.count -= count;
	FUNC1(dev, "%u GIDs starting at %u left reserved\n",
		      dev->roce.reserved_gids.count,
		      dev->roce.reserved_gids.start);
}