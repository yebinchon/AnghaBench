#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rvin_video_format {int bpp; } ;
struct TYPE_6__ {int field; int bytesperline; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {int left; int width; int top; int height; } ;
struct rvin_dev {TYPE_3__ format; TYPE_2__* info; TYPE_1__ crop; } ;
struct TYPE_5__ {scalar_t__ model; } ;

/* Variables and functions */
 scalar_t__ RCAR_GEN3 ; 
#define  V4L2_FIELD_INTERLACED 130 
#define  V4L2_FIELD_INTERLACED_BT 129 
#define  V4L2_FIELD_INTERLACED_TB 128 
 int /*<<< orphan*/  VNELPRC_REG ; 
 int /*<<< orphan*/  VNEPPRC_REG ; 
 int /*<<< orphan*/  VNIS_REG ; 
 int /*<<< orphan*/  VNSLPRC_REG ; 
 int /*<<< orphan*/  VNSPPRC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*) ; 
 struct rvin_video_format* FUNC1 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct rvin_dev *vin)
{
	const struct rvin_video_format *fmt;
	u32 stride;

	/* Set Start/End Pixel/Line Pre-Clip */
	FUNC2(vin, vin->crop.left, VNSPPRC_REG);
	FUNC2(vin, vin->crop.left + vin->crop.width - 1, VNEPPRC_REG);

	switch (vin->format.field) {
	case V4L2_FIELD_INTERLACED:
	case V4L2_FIELD_INTERLACED_TB:
	case V4L2_FIELD_INTERLACED_BT:
		FUNC2(vin, vin->crop.top / 2, VNSLPRC_REG);
		FUNC2(vin, (vin->crop.top + vin->crop.height) / 2 - 1,
			   VNELPRC_REG);
		break;
	default:
		FUNC2(vin, vin->crop.top, VNSLPRC_REG);
		FUNC2(vin, vin->crop.top + vin->crop.height - 1,
			   VNELPRC_REG);
		break;
	}

	/* TODO: Add support for the UDS scaler. */
	if (vin->info->model != RCAR_GEN3)
		FUNC0(vin);

	fmt = FUNC1(vin, vin->format.pixelformat);
	stride = vin->format.bytesperline / fmt->bpp;
	FUNC2(vin, stride, VNIS_REG);
}