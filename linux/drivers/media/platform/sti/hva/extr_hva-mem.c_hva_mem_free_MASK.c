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
struct hva_ctx {int /*<<< orphan*/  name; } ;
struct hva_buffer {int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WRITE_COMBINE ; 
 struct device* FUNC0 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct hva_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hva_ctx *ctx, struct hva_buffer *buf)
{
	struct device *dev = FUNC0(ctx);

	FUNC1(dev,
		"%s free %d bytes of HW memory @(virt=%p, phy=%pad): %s\n",
		ctx->name, buf->size, buf->vaddr, &buf->paddr, buf->name);

	FUNC3(dev, buf->size, buf->vaddr, buf->paddr,
		       DMA_ATTR_WRITE_COMBINE);

	FUNC2(dev, buf);
}