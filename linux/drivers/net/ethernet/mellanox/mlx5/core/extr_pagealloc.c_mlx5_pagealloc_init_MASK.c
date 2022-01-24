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
struct TYPE_2__ {int /*<<< orphan*/  pg_wq; int /*<<< orphan*/  free_list; int /*<<< orphan*/  page_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct mlx5_core_dev *dev)
{
	dev->priv.page_root = RB_ROOT;
	FUNC0(&dev->priv.free_list);
	dev->priv.pg_wq = FUNC1("mlx5_page_allocator");
	if (!dev->priv.pg_wq)
		return -ENOMEM;

	return 0;
}