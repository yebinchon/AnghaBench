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
struct video_device {int dummy; } ;
struct v4l2_format {scalar_t__ type; } ;
struct file {int dummy; } ;
struct common_obj {struct v4l2_format fmt; } ;
struct channel_obj {struct common_obj* common; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t VPIF_VIDEO_INDEX ; 
 struct video_device* FUNC0 (struct file*) ; 
 struct channel_obj* FUNC1 (struct video_device*) ; 
 scalar_t__ FUNC2 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct video_device *vdev = FUNC0(file);
	struct channel_obj *ch = FUNC1(vdev);
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

	/* Check the validity of the buffer type */
	if (common->fmt.type != fmt->type)
		return -EINVAL;

	if (FUNC2(ch))
		return -EINVAL;
	*fmt = common->fmt;
	return 0;
}