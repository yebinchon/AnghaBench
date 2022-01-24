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
struct via_format {int /*<<< orphan*/  mbus_code; int /*<<< orphan*/  pixelformat; } ;
struct via_camera {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct v4l2_pix_format {int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  pad ; 
 int FUNC0 (struct via_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_pix_format*,int /*<<< orphan*/ *) ; 
 struct via_format* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_pix_format*,struct v4l2_pix_format*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_pix_format*,struct v4l2_pix_format*) ; 

__attribute__((used)) static int FUNC6(struct via_camera *cam,
		struct v4l2_pix_format *upix, struct v4l2_pix_format *spix)
{
	int ret;
	struct v4l2_subdev_pad_config pad_cfg;
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_TRY,
	};
	struct via_format *f = FUNC3(upix->pixelformat);

	upix->pixelformat = f->pixelformat;
	FUNC5(upix, spix);
	FUNC1(&format.format, spix, f->mbus_code);
	ret = FUNC0(cam, pad, set_fmt, &pad_cfg, &format);
	FUNC2(spix, &format.format);
	FUNC4(upix, spix);
	return ret;
}