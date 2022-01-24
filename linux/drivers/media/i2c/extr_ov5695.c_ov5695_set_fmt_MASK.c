#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  field; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5695_mode {scalar_t__ height; scalar_t__ vts_def; scalar_t__ width; scalar_t__ hts_def; } ;
struct ov5695 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vblank; int /*<<< orphan*/  hblank; struct ov5695_mode const* cur_mode; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_BUS_FMT_SBGGR10_1X10 ; 
 scalar_t__ OV5695_VTS_MAX ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov5695_mode* FUNC3 (struct v4l2_subdev_format*) ; 
 struct ov5695* FUNC4 (struct v4l2_subdev*) ; 
 TYPE_1__* FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct ov5695 *ov5695 = FUNC4(sd);
	const struct ov5695_mode *mode;
	s64 h_blank, vblank_def;

	FUNC1(&ov5695->mutex);

	mode = FUNC3(fmt);
	fmt->format.code = MEDIA_BUS_FMT_SBGGR10_1X10;
	fmt->format.width = mode->width;
	fmt->format.height = mode->height;
	fmt->format.field = V4L2_FIELD_NONE;
	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
		*v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;
#endif
	} else {
		ov5695->cur_mode = mode;
		h_blank = mode->hts_def - mode->width;
		FUNC0(ov5695->hblank, h_blank,
					 h_blank, 1, h_blank);
		vblank_def = mode->vts_def - mode->height;
		FUNC0(ov5695->vblank, vblank_def,
					 OV5695_VTS_MAX - mode->height,
					 1, vblank_def);
	}

	FUNC2(&ov5695->mutex);

	return 0;
}