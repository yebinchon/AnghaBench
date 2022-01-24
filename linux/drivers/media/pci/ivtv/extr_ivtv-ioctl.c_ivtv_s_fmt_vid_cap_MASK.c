#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {TYPE_4__ format; int /*<<< orphan*/  which; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_5__ {int width; int height; int /*<<< orphan*/  video_encoding; } ;
struct ivtv {int /*<<< orphan*/  sd_video; TYPE_1__ cxhdl; int /*<<< orphan*/  capturing; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_FIXED ; 
 scalar_t__ V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ivtv_open_id* FUNC1 (void*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 
 int FUNC3 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  set_fmt ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, struct v4l2_format *fmt)
{
	struct ivtv_open_id *id = FUNC1(fh);
	struct ivtv *itv = id->itv;
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	int ret = FUNC3(file, fh, fmt);
	int w = fmt->fmt.pix.width;
	int h = fmt->fmt.pix.height;

	if (ret)
		return ret;

	if (itv->cxhdl.width == w && itv->cxhdl.height == h)
		return 0;

	if (FUNC0(&itv->capturing) > 0)
		return -EBUSY;

	itv->cxhdl.width = w;
	itv->cxhdl.height = h;
	if (FUNC4(itv->cxhdl.video_encoding) == V4L2_MPEG_VIDEO_ENCODING_MPEG_1)
		fmt->fmt.pix.width /= 2;
	format.format.width = fmt->fmt.pix.width;
	format.format.height = h;
	format.format.code = MEDIA_BUS_FMT_FIXED;
	FUNC5(itv->sd_video, pad, set_fmt, NULL, &format);
	return FUNC2(file, fh, fmt);
}