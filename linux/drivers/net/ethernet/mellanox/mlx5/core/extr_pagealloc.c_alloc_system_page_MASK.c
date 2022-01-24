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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {int dummy; } ;
struct mlx5_core_dev {struct device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_core_dev*,scalar_t__,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev, u16 func_id)
{
	struct device *device = dev->device;
	int nid = FUNC2(device);
	struct page *page;
	u64 zero_addr = 1;
	u64 addr;
	int err;

	page = FUNC1(nid, GFP_HIGHUSER, 0);
	if (!page) {
		FUNC8(dev, "failed to allocate page\n");
		return -ENOMEM;
	}
map:
	addr = FUNC3(device, page, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
	if (FUNC4(device, addr)) {
		FUNC8(dev, "failed dma mapping page\n");
		err = -ENOMEM;
		goto err_mapping;
	}

	/* Firmware doesn't support page with physical address 0 */
	if (addr == 0) {
		zero_addr = addr;
		goto map;
	}

	err = FUNC6(dev, addr, page, func_id);
	if (err) {
		FUNC7(dev, "failed to track allocated page\n");
		FUNC5(device, addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
	}

err_mapping:
	if (err)
		FUNC0(page);

	if (zero_addr == 0)
		FUNC5(device, zero_addr, PAGE_SIZE,
			       DMA_BIDIRECTIONAL);

	return err;
}