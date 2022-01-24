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
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; struct delta_dev* dev; } ;
struct delta_buf {int /*<<< orphan*/  attrs; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct delta_ctx *ctx, struct delta_buf *buf)
{
	struct delta_dev *delta = ctx->dev;

	FUNC0(delta->dev,
		"%s     free %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\n",
		ctx->name, buf->size, buf->vaddr, &buf->paddr, buf->name);

	FUNC1(delta->dev, buf->size,
		       buf->vaddr, buf->paddr, buf->attrs);
}