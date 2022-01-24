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
struct TYPE_6__ {scalar_t__ type; } ;
struct vsp1_video {int /*<<< orphan*/  lock; TYPE_2__* rwpf; TYPE_3__ queue; } ;
struct vsp1_format_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_5__ {struct vsp1_format_info const* fmtinfo; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct vsp1_video*,int /*<<< orphan*/ *,struct vsp1_format_info const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vsp1_video* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC5(struct file *file, void *fh, struct v4l2_format *format)
{
	struct v4l2_fh *vfh = file->private_data;
	struct vsp1_video *video = FUNC3(vfh->vdev);
	const struct vsp1_format_info *info;
	int ret;

	if (format->type != video->queue.type)
		return -EINVAL;

	ret = FUNC0(video, &format->fmt.pix_mp, &info);
	if (ret < 0)
		return ret;

	FUNC1(&video->lock);

	if (FUNC4(&video->queue)) {
		ret = -EBUSY;
		goto done;
	}

	video->rwpf->format = format->fmt.pix_mp;
	video->rwpf->fmtinfo = info;

done:
	FUNC2(&video->lock);
	return ret;
}