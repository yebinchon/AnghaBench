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
struct fastrpc_dma_buf_attachment {int /*<<< orphan*/  sgt; int /*<<< orphan*/  node; } ;
struct fastrpc_buf {int /*<<< orphan*/  lock; } ;
struct dma_buf_attachment {struct fastrpc_dma_buf_attachment* priv; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fastrpc_dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dma_buf *dmabuf,
				    struct dma_buf_attachment *attachment)
{
	struct fastrpc_dma_buf_attachment *a = attachment->priv;
	struct fastrpc_buf *buffer = dmabuf->priv;

	FUNC2(&buffer->lock);
	FUNC1(&a->node);
	FUNC3(&buffer->lock);
	FUNC4(&a->sgt);
	FUNC0(a);
}