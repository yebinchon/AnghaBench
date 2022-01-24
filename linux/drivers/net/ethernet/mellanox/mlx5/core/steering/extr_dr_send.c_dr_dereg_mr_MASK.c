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
struct mlx5dr_mr {int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  mkey; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_mr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *mdev, struct mlx5dr_mr *mr)
{
	FUNC2(mdev, &mr->mkey);
	FUNC0(&mdev->pdev->dev, mr->dma_addr, mr->size,
			 DMA_BIDIRECTIONAL);
	FUNC1(mr);
}