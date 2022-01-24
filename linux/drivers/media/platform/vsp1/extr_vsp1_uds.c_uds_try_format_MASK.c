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
struct vsp1_uds {int /*<<< orphan*/  entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; void* height; void* width; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_BUS_FMT_ARGB8888_1X32 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_AYUV8_1X32 ; 
 unsigned int UDS_MAX_SIZE ; 
 unsigned int UDS_MIN_SIZE ; 
#define  UDS_PAD_SINK 129 
#define  UDS_PAD_SOURCE 128 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 void* FUNC0 (void*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned int*,unsigned int*) ; 
 struct v4l2_mbus_framefmt* FUNC2 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,int const) ; 

__attribute__((used)) static void FUNC3(struct vsp1_uds *uds,
			   struct v4l2_subdev_pad_config *config,
			   unsigned int pad, struct v4l2_mbus_framefmt *fmt)
{
	struct v4l2_mbus_framefmt *format;
	unsigned int minimum;
	unsigned int maximum;

	switch (pad) {
	case UDS_PAD_SINK:
		/* Default to YUV if the requested format is not supported. */
		if (fmt->code != MEDIA_BUS_FMT_ARGB8888_1X32 &&
		    fmt->code != MEDIA_BUS_FMT_AYUV8_1X32)
			fmt->code = MEDIA_BUS_FMT_AYUV8_1X32;

		fmt->width = FUNC0(fmt->width, UDS_MIN_SIZE, UDS_MAX_SIZE);
		fmt->height = FUNC0(fmt->height, UDS_MIN_SIZE, UDS_MAX_SIZE);
		break;

	case UDS_PAD_SOURCE:
		/* The UDS scales but can't perform format conversion. */
		format = FUNC2(&uds->entity, config,
						    UDS_PAD_SINK);
		fmt->code = format->code;

		FUNC1(format->width, &minimum, &maximum);
		fmt->width = FUNC0(fmt->width, minimum, maximum);
		FUNC1(format->height, &minimum, &maximum);
		fmt->height = FUNC0(fmt->height, minimum, maximum);
		break;
	}

	fmt->field = V4L2_FIELD_NONE;
	fmt->colorspace = V4L2_COLORSPACE_SRGB;
}