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
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct camif_vp {void* owner; int /*<<< orphan*/  vb_queue; int /*<<< orphan*/  frame_sequence; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EBUSY ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 
 struct camif_vp* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			   struct v4l2_buffer *buf)
{
	struct camif_vp *vp = FUNC2(file);

	FUNC0("[vp%d] sequence: %d\n", vp->id, vp->frame_sequence);

	if (vp->owner && vp->owner != priv)
		return -EBUSY;

	return FUNC1(&vp->vb_queue, buf, file->f_flags & O_NONBLOCK);
}