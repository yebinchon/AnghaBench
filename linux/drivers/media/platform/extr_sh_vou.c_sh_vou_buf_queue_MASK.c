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
struct sh_vou_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_list; } ;
struct sh_vou_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sh_vou_buffer* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 struct sh_vou_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct sh_vou_device *vou_dev = FUNC5(vb->vb2_queue);
	struct sh_vou_buffer *shbuf = FUNC3(vbuf);
	unsigned long flags;

	FUNC1(&vou_dev->lock, flags);
	FUNC0(&shbuf->list, &vou_dev->buf_list);
	FUNC2(&vou_dev->lock, flags);
}