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
typedef  int /*<<< orphan*/  u32 ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  sys_errors; struct delta_dev* dev; } ;
struct delta_buf {char const* name; unsigned long attrs; int /*<<< orphan*/  paddr; void* vaddr; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long DMA_ATTR_WRITE_COMBINE ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned long) ; 

int FUNC3(struct delta_ctx *ctx, u32 size, const char *name,
	     struct delta_buf *buf)
{
	struct delta_dev *delta = ctx->dev;
	dma_addr_t dma_addr;
	void *addr;
	unsigned long attrs = DMA_ATTR_WRITE_COMBINE;

	addr = FUNC2(delta->dev, size, &dma_addr,
			       GFP_KERNEL | __GFP_NOWARN, attrs);
	if (!addr) {
		FUNC1(delta->dev,
			"%s hw_alloc:dma_alloc_coherent failed for %s (size=%d)\n",
			ctx->name, name, size);
		ctx->sys_errors++;
		return -ENOMEM;
	}

	buf->size = size;
	buf->paddr = dma_addr;
	buf->vaddr = addr;
	buf->name = name;
	buf->attrs = attrs;

	FUNC0(delta->dev,
		"%s allocate %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\n",
		ctx->name, size, buf->vaddr, &buf->paddr, buf->name);

	return 0;
}