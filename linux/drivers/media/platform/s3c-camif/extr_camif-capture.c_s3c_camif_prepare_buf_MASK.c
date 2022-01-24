#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct camif_vp {TYPE_2__ vdev; int /*<<< orphan*/  vb_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 struct camif_vp* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				 struct v4l2_buffer *b)
{
	struct camif_vp *vp = FUNC1(file);
	return FUNC0(&vp->vb_queue, vp->vdev.v4l2_dev->mdev, b);
}