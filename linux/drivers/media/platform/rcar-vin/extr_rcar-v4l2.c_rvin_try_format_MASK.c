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
typedef  void* u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {void* which; int /*<<< orphan*/  format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; void* width; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_pix_format {int field; int height; void* width; int /*<<< orphan*/  pixelformat; } ;
struct rvin_dev {int /*<<< orphan*/  mbus_code; TYPE_1__* parallel; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {int /*<<< orphan*/  source_pad; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RVIN_DEFAULT_FORMAT ; 
 scalar_t__ V4L2_FIELD_ALTERNATE ; 
 int V4L2_FIELD_ANY ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*,struct v4l2_pix_format*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_pix_format*,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev_pad_config* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev_pad_config*) ; 
 struct v4l2_subdev* FUNC7 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC8(struct rvin_dev *vin, u32 which,
			   struct v4l2_pix_format *pix,
			   struct v4l2_rect *crop, struct v4l2_rect *compose)
{
	struct v4l2_subdev *sd = FUNC7(vin);
	struct v4l2_subdev_pad_config *pad_cfg;
	struct v4l2_subdev_format format = {
		.which = which,
		.pad = vin->parallel->source_pad,
	};
	enum v4l2_field field;
	u32 width, height;
	int ret;

	pad_cfg = FUNC4(sd);
	if (pad_cfg == NULL)
		return -ENOMEM;

	if (!FUNC1(vin, pix->pixelformat))
		pix->pixelformat = RVIN_DEFAULT_FORMAT;

	FUNC2(&format.format, pix, vin->mbus_code);

	/* Allow the video device to override field and to scale */
	field = pix->field;
	width = pix->width;
	height = pix->height;

	ret = FUNC5(sd, pad, set_fmt, pad_cfg, &format);
	if (ret < 0 && ret != -ENOIOCTLCMD)
		goto done;

	FUNC3(pix, &format.format);

	if (crop) {
		crop->top = 0;
		crop->left = 0;
		crop->width = pix->width;
		crop->height = pix->height;

		/*
		 * If source is ALTERNATE the driver will use the VIN hardware
		 * to INTERLACE it. The crop height then needs to be doubled.
		 */
		if (pix->field == V4L2_FIELD_ALTERNATE)
			crop->height *= 2;
	}

	if (field != V4L2_FIELD_ANY)
		pix->field = field;

	pix->width = width;
	pix->height = height;

	FUNC0(vin, pix);

	if (compose) {
		compose->top = 0;
		compose->left = 0;
		compose->width = pix->width;
		compose->height = pix->height;
	}
done:
	FUNC6(pad_cfg);

	return 0;
}