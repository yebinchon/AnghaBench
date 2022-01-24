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
struct vpfe_device {int /*<<< orphan*/  dma_queue_lock; int /*<<< orphan*/  dma_queue; } ;
struct vpfe_cap_buffer {int /*<<< orphan*/  list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct vpfe_cap_buffer* FUNC4 (struct vb2_v4l2_buffer*) ; 
 struct vpfe_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct vpfe_device *vpfe = FUNC5(vb->vb2_queue);
	struct vpfe_cap_buffer *buf = FUNC4(vbuf);
	unsigned long flags = 0;

	/* add the buffer to the DMA queue */
	FUNC1(&vpfe->dma_queue_lock, flags);
	FUNC0(&buf->list, &vpfe->dma_queue);
	FUNC2(&vpfe->dma_queue_lock, flags);
}