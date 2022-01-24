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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  free_list; int /*<<< orphan*/  page_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  device; } ;
struct fw_page {int free_count; int /*<<< orphan*/  list; int /*<<< orphan*/  page; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  bitmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 int MLX5_NUM_4K_IN_PAGE ; 
 int MLX5_U64_4K_PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fw_page* FUNC2 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mlx5_core_dev *dev, u64 addr)
{
	struct fw_page *fwp;
	int n;

	fwp = FUNC2(dev, addr & MLX5_U64_4K_PAGE_MASK);
	if (!fwp) {
		FUNC6(dev, "page not found\n");
		return;
	}

	n = (addr & ~MLX5_U64_4K_PAGE_MASK) >> MLX5_ADAPTER_PAGE_SHIFT;
	fwp->free_count++;
	FUNC8(n, &fwp->bitmask);
	if (fwp->free_count == MLX5_NUM_4K_IN_PAGE) {
		FUNC7(&fwp->rb_node, &dev->priv.page_root);
		if (fwp->free_count != 1)
			FUNC5(&fwp->list);
		FUNC1(dev->device, addr & MLX5_U64_4K_PAGE_MASK,
			       PAGE_SIZE, DMA_BIDIRECTIONAL);
		FUNC0(fwp->page);
		FUNC3(fwp);
	} else if (fwp->free_count == 1) {
		FUNC4(&fwp->list, &dev->priv.free_list);
	}
}