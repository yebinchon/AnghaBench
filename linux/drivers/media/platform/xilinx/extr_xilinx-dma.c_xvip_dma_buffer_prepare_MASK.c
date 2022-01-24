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
struct xvip_dma_buffer {struct xvip_dma* dma; } ;
struct xvip_dma {int dummy; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct xvip_dma_buffer* FUNC1 (struct vb2_v4l2_buffer*) ; 
 struct xvip_dma* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct xvip_dma *dma = FUNC2(vb->vb2_queue);
	struct xvip_dma_buffer *buf = FUNC1(vbuf);

	buf->dma = dma;

	return 0;
}