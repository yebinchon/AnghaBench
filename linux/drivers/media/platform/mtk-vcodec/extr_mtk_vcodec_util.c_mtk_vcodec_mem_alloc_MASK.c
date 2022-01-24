#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtk_vcodec_mem {unsigned long size; unsigned long va; scalar_t__ dma_addr; } ;
struct mtk_vcodec_ctx {int /*<<< orphan*/  id; TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* plat_dev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 unsigned long FUNC1 (struct device*,unsigned long,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC4(struct mtk_vcodec_ctx *data,
			struct mtk_vcodec_mem *mem)
{
	unsigned long size = mem->size;
	struct mtk_vcodec_ctx *ctx = (struct mtk_vcodec_ctx *)data;
	struct device *dev = &ctx->dev->plat_dev->dev;

	mem->va = FUNC1(dev, size, &mem->dma_addr, GFP_KERNEL);
	if (!mem->va) {
		FUNC3("%s dma_alloc size=%ld failed!", FUNC0(dev),
			     size);
		return -ENOMEM;
	}

	FUNC2(3, "[%d]  - va      = %p", ctx->id, mem->va);
	FUNC2(3, "[%d]  - dma     = 0x%lx", ctx->id,
		       (unsigned long)mem->dma_addr);
	FUNC2(3, "[%d]    size = 0x%lx", ctx->id, size);

	return 0;
}