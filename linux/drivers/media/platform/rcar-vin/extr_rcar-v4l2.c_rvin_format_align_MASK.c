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
typedef  int u32 ;
struct v4l2_pix_format {int field; int height; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct rvin_dev {TYPE_2__* info; TYPE_1__ format; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;

/* Variables and functions */
 int RVIN_DEFAULT_FIELD ; 
 int /*<<< orphan*/  RVIN_DEFAULT_FORMAT ; 
#define  V4L2_FIELD_ALTERNATE 134 
#define  V4L2_FIELD_BOTTOM 133 
#define  V4L2_FIELD_INTERLACED 132 
#define  V4L2_FIELD_INTERLACED_BT 131 
#define  V4L2_FIELD_INTERLACED_TB 130 
#define  V4L2_FIELD_NONE 129 
#define  V4L2_FIELD_TOP 128 
 scalar_t__ V4L2_PIX_FMT_NV16 ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*,struct v4l2_pix_format*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_pix_format*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rvin_dev *vin, struct v4l2_pix_format *pix)
{
	u32 walign;

	if (!FUNC1(vin, pix->pixelformat))
		pix->pixelformat = RVIN_DEFAULT_FORMAT;

	switch (pix->field) {
	case V4L2_FIELD_TOP:
	case V4L2_FIELD_BOTTOM:
	case V4L2_FIELD_NONE:
	case V4L2_FIELD_INTERLACED_TB:
	case V4L2_FIELD_INTERLACED_BT:
	case V4L2_FIELD_INTERLACED:
		break;
	case V4L2_FIELD_ALTERNATE:
		/*
		 * Driver does not (yet) support outputting ALTERNATE to a
		 * userspace. It does support outputting INTERLACED so use
		 * the VIN hardware to combine the two fields.
		 */
		pix->field = V4L2_FIELD_INTERLACED;
		pix->height *= 2;
		break;
	default:
		pix->field = RVIN_DEFAULT_FIELD;
		break;
	}

	/* HW limit width to a multiple of 32 (2^5) for NV16 else 2 (2^1) */
	walign = vin->format.pixelformat == V4L2_PIX_FMT_NV16 ? 5 : 1;

	/* Limit to VIN capabilities */
	FUNC3(&pix->width, 2, vin->info->max_width, walign,
			      &pix->height, 4, vin->info->max_height, 2, 0);

	pix->bytesperline = FUNC0(vin, pix);
	pix->sizeimage = FUNC2(pix);

	FUNC4(vin, "Format %ux%u bpl: %u size: %u\n",
		pix->width, pix->height, pix->bytesperline, pix->sizeimage);
}