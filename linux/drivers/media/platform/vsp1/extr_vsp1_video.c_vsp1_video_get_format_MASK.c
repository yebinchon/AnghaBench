#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
struct vsp1_video {int /*<<< orphan*/  lock; TYPE_1__* rwpf; TYPE_2__ queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_3__ fmt; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vsp1_video* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct file *file, void *fh, struct v4l2_format *format)
{
	struct v4l2_fh *vfh = file->private_data;
	struct vsp1_video *video = FUNC2(vfh->vdev);

	if (format->type != video->queue.type)
		return -EINVAL;

	FUNC0(&video->lock);
	format->fmt.pix_mp = video->rwpf->format;
	FUNC1(&video->lock);

	return 0;
}