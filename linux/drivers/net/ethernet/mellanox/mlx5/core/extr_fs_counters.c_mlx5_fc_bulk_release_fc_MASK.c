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
struct mlx5_fc_bulk {int base_id; int /*<<< orphan*/  bitmask; } ;
struct mlx5_fc {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5_fc_bulk *bulk, struct mlx5_fc *fc)
{
	int fc_index = fc->id - bulk->base_id;

	if (FUNC1(fc_index, bulk->bitmask))
		return -EINVAL;

	FUNC0(fc_index, bulk->bitmask);
	return 0;
}