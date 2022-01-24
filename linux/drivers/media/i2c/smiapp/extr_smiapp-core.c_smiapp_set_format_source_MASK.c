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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_2__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {unsigned long* valid_link_freqs; size_t compressed_min_bpp; int /*<<< orphan*/  link_freq; struct smiapp_csi_data_format const* csi_format; int /*<<< orphan*/ * test_data; TYPE_1__* src; } ;
typedef  struct smiapp_csi_data_format {int width; scalar_t__ compressed; int /*<<< orphan*/  code; } const smiapp_csi_data_format ;
struct TYPE_3__ {struct v4l2_subdev sd; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smiapp_sensor*) ; 
 struct smiapp_csi_data_format const* FUNC6 (struct smiapp_sensor*,int /*<<< orphan*/ ) ; 
 struct smiapp_sensor* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *subdev,
				    struct v4l2_subdev_pad_config *cfg,
				    struct v4l2_subdev_format *fmt)
{
	struct smiapp_sensor *sensor = FUNC7(subdev);
	const struct smiapp_csi_data_format *csi_format,
		*old_csi_format = sensor->csi_format;
	unsigned long *valid_link_freqs;
	u32 code = fmt->format.code;
	unsigned int i;
	int rval;

	rval = FUNC3(subdev, cfg, fmt);
	if (rval)
		return rval;

	/*
	 * Media bus code is changeable on src subdev's source pad. On
	 * other source pads we just get format here.
	 */
	if (subdev != &sensor->src->sd)
		return 0;

	csi_format = FUNC6(sensor, code);

	fmt->format.code = csi_format->code;

	if (fmt->which != V4L2_SUBDEV_FORMAT_ACTIVE)
		return 0;

	sensor->csi_format = csi_format;

	if (csi_format->width != old_csi_format->width)
		for (i = 0; i < FUNC0(sensor->test_data); i++)
			FUNC4(
				sensor->test_data[i], 0,
				(1 << csi_format->width) - 1, 1, 0);

	if (csi_format->compressed == old_csi_format->compressed)
		return 0;

	valid_link_freqs =
		&sensor->valid_link_freqs[sensor->csi_format->compressed
					  - sensor->compressed_min_bpp];

	FUNC4(
		sensor->link_freq, 0,
		FUNC2(*valid_link_freqs), ~*valid_link_freqs,
		FUNC1(*valid_link_freqs));

	return FUNC5(sensor);
}