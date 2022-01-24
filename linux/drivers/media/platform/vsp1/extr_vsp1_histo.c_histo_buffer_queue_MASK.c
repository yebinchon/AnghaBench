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
struct vsp1_histogram_buffer {int /*<<< orphan*/  queue; } ;
struct vsp1_histogram {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irqqueue; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct vsp1_histogram_buffer* FUNC4 (struct vb2_v4l2_buffer*) ; 
 struct vsp1_histogram* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct vsp1_histogram *histo = FUNC5(vb->vb2_queue);
	struct vsp1_histogram_buffer *buf = FUNC4(vbuf);
	unsigned long flags;

	FUNC1(&histo->irqlock, flags);
	FUNC0(&buf->queue, &histo->irqqueue);
	FUNC2(&histo->irqlock, flags);
}