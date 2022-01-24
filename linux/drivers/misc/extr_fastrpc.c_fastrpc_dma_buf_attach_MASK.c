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
struct fastrpc_dma_buf_attachment {int /*<<< orphan*/  node; int /*<<< orphan*/  dev; int /*<<< orphan*/  sgt; } ;
struct fastrpc_buf {int /*<<< orphan*/  lock; int /*<<< orphan*/  attachments; int /*<<< orphan*/  dev; int /*<<< orphan*/  size; int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct dma_buf_attachment {struct fastrpc_dma_buf_attachment* priv; int /*<<< orphan*/  dev; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fastrpc_dma_buf_attachment*) ; 
 struct fastrpc_dma_buf_attachment* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_buf *dmabuf,
				  struct dma_buf_attachment *attachment)
{
	struct fastrpc_dma_buf_attachment *a;
	struct fastrpc_buf *buffer = dmabuf->priv;
	int ret;

	a = FUNC5(sizeof(*a), GFP_KERNEL);
	if (!a)
		return -ENOMEM;

	ret = FUNC3(buffer->dev, &a->sgt, buffer->virt,
			      FUNC0(buffer->phys), buffer->size);
	if (ret < 0) {
		FUNC2(buffer->dev, "failed to get scatterlist from DMA API\n");
		FUNC4(a);
		return -EINVAL;
	}

	a->dev = attachment->dev;
	FUNC1(&a->node);
	attachment->priv = a;

	FUNC7(&buffer->lock);
	FUNC6(&a->node, &buffer->attachments);
	FUNC8(&buffer->lock);

	return 0;
}