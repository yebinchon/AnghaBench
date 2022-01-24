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
struct rockchip_rga {int /*<<< orphan*/  cmdbuf_phy; int /*<<< orphan*/  dev; int /*<<< orphan*/  dst_mmu_pages; int /*<<< orphan*/  src_mmu_pages; int /*<<< orphan*/  cmdbuf_virt; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int RGA_CMDBUF_SIZE ; 
 int /*<<< orphan*/  RGA_CMD_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rga_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rga_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct rga_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rga_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rga_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_rga*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rga_ctx *ctx)
{
	struct rockchip_rga *rga = ctx->rga;

	FUNC1(rga->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);

	FUNC5(ctx, rga->src_mmu_pages);
	/*
	 * Due to hardware bug,
	 * src1 mmu also should be configured when using alpha blending.
	 */
	FUNC4(ctx, rga->dst_mmu_pages);

	FUNC2(ctx, rga->dst_mmu_pages);
	FUNC3(ctx);

	FUNC6(ctx);

	FUNC7(rga, RGA_CMD_BASE, rga->cmdbuf_phy);

	/* sync CMD buf for RGA */
	FUNC0(rga->dev, rga->cmdbuf_phy,
		PAGE_SIZE, DMA_BIDIRECTIONAL);
}