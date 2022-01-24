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
struct mlx5e_sq_dma {int type; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
#define  MLX5E_DMA_MAP_PAGE 129 
#define  MLX5E_DMA_MAP_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct device *pdev, struct mlx5e_sq_dma *dma)
{
	switch (dma->type) {
	case MLX5E_DMA_MAP_SINGLE:
		FUNC2(pdev, dma->addr, dma->size, DMA_TO_DEVICE);
		break;
	case MLX5E_DMA_MAP_PAGE:
		FUNC1(pdev, dma->addr, dma->size, DMA_TO_DEVICE);
		break;
	default:
		FUNC0(true, "mlx5e_tx_dma_unmap unknown DMA type!\n");
	}
}