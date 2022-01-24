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
struct v4l2_subdev_mbus_code_enum {unsigned int index; int code; int /*<<< orphan*/  which; } ;
struct v4l2_device {int dummy; } ;
struct pxa_mbus_pixelfmt {int /*<<< orphan*/  name; int /*<<< orphan*/  bits_per_sample; } ;
struct pxa_camera_format_xlate {int code; struct pxa_mbus_pixelfmt const* host_fmt; } ;
struct pxa_camera_dev {int dummy; } ;

/* Variables and functions */
#define  MEDIA_BUS_FMT_RGB555_2X8_PADHI_LE 133 
#define  MEDIA_BUS_FMT_RGB565_2X8_LE 132 
#define  MEDIA_BUS_FMT_UYVY8_2X8 131 
#define  MEDIA_BUS_FMT_VYUY8_2X8 130 
#define  MEDIA_BUS_FMT_YUYV8_2X8 129 
#define  MEDIA_BUS_FMT_YVYU8_2X8 128 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  enum_mbus_code ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_camera_dev*) ; 
 struct pxa_mbus_pixelfmt const* pxa_camera_formats ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_mbus_pixelfmt const*) ; 
 int FUNC4 (struct pxa_camera_dev*,int /*<<< orphan*/ ) ; 
 struct pxa_mbus_pixelfmt* FUNC5 (int) ; 
 int FUNC6 (struct pxa_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_mbus_code_enum*) ; 
 struct pxa_camera_dev* FUNC7 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_device *v4l2_dev,
				  unsigned int idx,
				  struct pxa_camera_format_xlate *xlate)
{
	struct pxa_camera_dev *pcdev = FUNC7(v4l2_dev);
	int formats = 0, ret;
	struct v4l2_subdev_mbus_code_enum code = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
		.index = idx,
	};
	const struct pxa_mbus_pixelfmt *fmt;

	ret = FUNC6(pcdev, pad, enum_mbus_code, NULL, &code);
	if (ret < 0)
		/* No more formats */
		return 0;

	fmt = FUNC5(code.code);
	if (!fmt) {
		FUNC1(FUNC2(pcdev),
			"Invalid format code #%u: %d\n", idx, code.code);
		return 0;
	}

	/* This also checks support for the requested bits-per-sample */
	ret = FUNC4(pcdev, fmt->bits_per_sample);
	if (ret < 0)
		return 0;

	switch (code.code) {
	case MEDIA_BUS_FMT_UYVY8_2X8:
		formats++;
		if (xlate) {
			xlate->host_fmt	= &pxa_camera_formats[0];
			xlate->code	= code.code;
			xlate++;
			FUNC0(FUNC2(pcdev),
				"Providing format %s using code %d\n",
				pxa_camera_formats[0].name, code.code);
		}
	/* fall through */
	case MEDIA_BUS_FMT_VYUY8_2X8:
	case MEDIA_BUS_FMT_YUYV8_2X8:
	case MEDIA_BUS_FMT_YVYU8_2X8:
	case MEDIA_BUS_FMT_RGB565_2X8_LE:
	case MEDIA_BUS_FMT_RGB555_2X8_PADHI_LE:
		if (xlate)
			FUNC0(FUNC2(pcdev),
				"Providing format %s packed\n",
				fmt->name);
		break;
	default:
		if (!FUNC3(fmt))
			return 0;
		if (xlate)
			FUNC0(FUNC2(pcdev),
				"Providing format %s in pass-through mode\n",
				fmt->name);
		break;
	}

	/* Generic pass-through */
	formats++;
	if (xlate) {
		xlate->host_fmt	= fmt;
		xlate->code	= code.code;
		xlate++;
	}

	return formats;
}