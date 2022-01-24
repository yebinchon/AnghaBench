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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  quantization; int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct imx214_mode {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct imx214 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMX214_MBUS_CODE ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct v4l2_rect* FUNC4 (struct imx214*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC5 (struct imx214*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  imx214_modes ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct imx214* FUNC8 (struct v4l2_subdev*) ; 
 struct imx214_mode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *format)
{
	struct imx214 *imx214 = FUNC8(sd);
	struct v4l2_mbus_framefmt *__format;
	struct v4l2_rect *__crop;
	const struct imx214_mode *mode;

	FUNC6(&imx214->mutex);

	__crop = FUNC4(imx214, cfg, format->pad, format->which);

	mode = FUNC9(imx214_modes,
				      FUNC0(imx214_modes), width, height,
				      format->format.width,
				      format->format.height);

	__crop->width = mode->width;
	__crop->height = mode->height;

	__format = FUNC5(imx214, cfg, format->pad,
					   format->which);
	__format->width = __crop->width;
	__format->height = __crop->height;
	__format->code = IMX214_MBUS_CODE;
	__format->field = V4L2_FIELD_NONE;
	__format->colorspace = V4L2_COLORSPACE_SRGB;
	__format->ycbcr_enc = FUNC3(__format->colorspace);
	__format->quantization = FUNC1(true,
				__format->colorspace, __format->ycbcr_enc);
	__format->xfer_func = FUNC2(__format->colorspace);

	format->format = *__format;

	FUNC7(&imx214->mutex);

	return 0;
}