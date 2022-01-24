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
struct rockchip_rga {int /*<<< orphan*/  dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vfd; int /*<<< orphan*/  m2m_dev; scalar_t__ dst_mmu_pages; scalar_t__ src_mmu_pages; int /*<<< orphan*/  cmdbuf_phy; int /*<<< orphan*/  cmdbuf_virt; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WRITE_COMBINE ; 
 int /*<<< orphan*/  RGA_CMDBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 struct rockchip_rga* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rockchip_rga *rga = FUNC2(pdev);

	FUNC0(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
		       rga->cmdbuf_phy, DMA_ATTR_WRITE_COMBINE);

	FUNC1((unsigned long)rga->src_mmu_pages, 3);
	FUNC1((unsigned long)rga->dst_mmu_pages, 3);

	FUNC5(&rga->v4l2_dev, "Removing\n");

	FUNC6(rga->m2m_dev);
	FUNC7(rga->vfd);
	FUNC4(&rga->v4l2_dev);

	FUNC3(rga->dev);

	return 0;
}