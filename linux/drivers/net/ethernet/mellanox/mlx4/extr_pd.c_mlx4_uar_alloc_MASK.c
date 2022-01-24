#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_uar {int index; int pfn; int /*<<< orphan*/ * map; } ;
struct TYPE_5__ {int uar_page_size; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct TYPE_7__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_8__ {TYPE_3__ uar_table; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*) ; 
 TYPE_4__* FUNC2 (struct mlx4_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mlx4_dev *dev, struct mlx4_uar *uar)
{
	int offset;

	uar->index = FUNC0(&FUNC2(dev)->uar_table.bitmap);
	if (uar->index == -1)
		return -ENOMEM;

	if (FUNC1(dev))
		offset = uar->index % ((int)FUNC3(dev->persist->pdev,
							     2) /
				       dev->caps.uar_page_size);
	else
		offset = uar->index;
	uar->pfn = (FUNC4(dev->persist->pdev, 2) >> PAGE_SHIFT)
		    + offset;
	uar->map = NULL;
	return 0;
}