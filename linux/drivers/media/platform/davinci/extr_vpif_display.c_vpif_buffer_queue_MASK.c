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
struct vpif_disp_buffer {int /*<<< orphan*/  list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct common_obj {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  dma_queue; } ;
struct channel_obj {struct common_obj* common; } ;

/* Variables and functions */
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct vpif_disp_buffer* FUNC4 (struct vb2_v4l2_buffer*) ; 
 struct channel_obj* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct vpif_disp_buffer *buf = FUNC4(vbuf);
	struct channel_obj *ch = FUNC5(vb->vb2_queue);
	struct common_obj *common;
	unsigned long flags;

	common = &ch->common[VPIF_VIDEO_INDEX];

	/* add the buffer to the DMA queue */
	FUNC1(&common->irqlock, flags);
	FUNC0(&buf->list, &common->dma_queue);
	FUNC2(&common->irqlock, flags);
}