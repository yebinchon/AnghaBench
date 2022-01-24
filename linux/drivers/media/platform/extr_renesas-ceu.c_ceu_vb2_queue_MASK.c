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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct ceu_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  capture; } ;
struct ceu_buffer {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct ceu_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct ceu_buffer* FUNC5 (struct vb2_v4l2_buffer*) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct ceu_device *ceudev = FUNC4(vb->vb2_queue);
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct ceu_buffer *buf = FUNC5(vbuf);
	unsigned long irqflags;

	FUNC1(&ceudev->lock, irqflags);
	FUNC0(&buf->queue, &ceudev->capture);
	FUNC2(&ceudev->lock, irqflags);
}