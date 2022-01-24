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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5dr_mr {size_t size; void* addr; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  mkey; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_mr*) ; 
 struct mlx5dr_mr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static struct mlx5dr_mr *FUNC7(struct mlx5_core_dev *mdev,
				   u32 pdn, void *buf, size_t size)
{
	struct mlx5dr_mr *mr = FUNC5(sizeof(*mr), GFP_KERNEL);
	struct device *dma_device;
	dma_addr_t dma_addr;
	int err;

	if (!mr)
		return NULL;

	dma_device = &mdev->pdev->dev;
	dma_addr = FUNC0(dma_device, buf, size,
				  DMA_BIDIRECTIONAL);
	err = FUNC1(dma_device, dma_addr);
	if (err) {
		FUNC6(mdev, "Can't dma buf\n");
		FUNC4(mr);
		return NULL;
	}

	err = FUNC3(mdev, pdn, &mr->mkey);
	if (err) {
		FUNC6(mdev, "Can't create mkey\n");
		FUNC2(dma_device, dma_addr, size,
				 DMA_BIDIRECTIONAL);
		FUNC4(mr);
		return NULL;
	}

	mr->dma_addr = dma_addr;
	mr->size = size;
	mr->addr = buf;

	return mr;
}