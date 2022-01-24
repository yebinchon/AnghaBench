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
struct mlx5_fc_bulk {scalar_t__ bulk_len; struct mlx5_fc_bulk* bitmask; int /*<<< orphan*/  base_id; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_fc_bulk*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC3 (struct mlx5_fc_bulk*) ; 

__attribute__((used)) static int
FUNC4(struct mlx5_core_dev *dev, struct mlx5_fc_bulk *bulk)
{
	if (FUNC3(bulk) < bulk->bulk_len) {
		FUNC2(dev, "Freeing bulk before all counters were released\n");
		return -EBUSY;
	}

	FUNC1(dev, bulk->base_id);
	FUNC0(bulk->bitmask);
	FUNC0(bulk);

	return 0;
}