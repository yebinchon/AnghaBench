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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {struct cobalt_stream* drv_priv; } ;
struct vb2_buffer {size_t index; struct vb2_queue* vb2_queue; } ;
struct sg_dma_desc_info {int dummy; } ;
struct cobalt_stream {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  bufs; struct sg_dma_desc_info* dma_desc_info; } ;
struct cobalt_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cobalt_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct sg_dma_desc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_dma_desc_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cobalt_buffer* FUNC6 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC8(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC7(vb);
	struct vb2_queue *q = vb->vb2_queue;
	struct cobalt_stream *s = q->drv_priv;
	struct cobalt_buffer *cb = FUNC6(vbuf);
	struct sg_dma_desc_info *desc = &s->dma_desc_info[vb->index];
	unsigned long flags;

	/* Prepare new buffer */
	FUNC2(desc);
	FUNC1(desc);

	FUNC4(&s->irqlock, flags);
	FUNC3(&cb->list, &s->bufs);
	FUNC0(s);
	FUNC5(&s->irqlock, flags);
}