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
typedef  int u32 ;
struct sun6i_csi_config {int width; int height; int pixelformat; } ;
struct TYPE_2__ {struct sun6i_csi_config config; } ;
struct sun6i_csi_dev {int* planar_offset; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__ csi; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CSI_CH_BUF_LEN_REG ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSI_CH_HSIZE_REG ; 
 int /*<<< orphan*/  CSI_CH_VSIZE_REG ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
#define  V4L2_PIX_FMT_HM12 139 
#define  V4L2_PIX_FMT_NV12 138 
#define  V4L2_PIX_FMT_NV16 137 
#define  V4L2_PIX_FMT_NV21 136 
#define  V4L2_PIX_FMT_NV61 135 
#define  V4L2_PIX_FMT_UYVY 134 
#define  V4L2_PIX_FMT_VYUY 133 
#define  V4L2_PIX_FMT_YUV420 132 
#define  V4L2_PIX_FMT_YUV422P 131 
#define  V4L2_PIX_FMT_YUYV 130 
#define  V4L2_PIX_FMT_YVU420 129 
#define  V4L2_PIX_FMT_YVYU 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct sun6i_csi_dev *sdev)
{
	struct sun6i_csi_config *config = &sdev->csi.config;
	u32 bytesperline_y;
	u32 bytesperline_c;
	int *planar_offset = sdev->planar_offset;
	u32 width = config->width;
	u32 height = config->height;
	u32 hor_len = width;

	switch (config->pixelformat) {
	case V4L2_PIX_FMT_YUYV:
	case V4L2_PIX_FMT_YVYU:
	case V4L2_PIX_FMT_UYVY:
	case V4L2_PIX_FMT_VYUY:
		FUNC6(sdev->dev,
			"Horizontal length should be 2 times of width for packed YUV formats!\n");
		hor_len = width * 2;
		break;
	default:
		break;
	}

	FUNC7(sdev->regmap, CSI_CH_HSIZE_REG,
		     FUNC2(hor_len) |
		     FUNC3(0));
	FUNC7(sdev->regmap, CSI_CH_VSIZE_REG,
		     FUNC4(height) |
		     FUNC5(0));

	planar_offset[0] = 0;
	switch (config->pixelformat) {
	case V4L2_PIX_FMT_HM12:
	case V4L2_PIX_FMT_NV12:
	case V4L2_PIX_FMT_NV21:
	case V4L2_PIX_FMT_NV16:
	case V4L2_PIX_FMT_NV61:
		bytesperline_y = width;
		bytesperline_c = width;
		planar_offset[1] = bytesperline_y * height;
		planar_offset[2] = -1;
		break;
	case V4L2_PIX_FMT_YUV420:
	case V4L2_PIX_FMT_YVU420:
		bytesperline_y = width;
		bytesperline_c = width / 2;
		planar_offset[1] = bytesperline_y * height;
		planar_offset[2] = planar_offset[1] +
				bytesperline_c * height / 2;
		break;
	case V4L2_PIX_FMT_YUV422P:
		bytesperline_y = width;
		bytesperline_c = width / 2;
		planar_offset[1] = bytesperline_y * height;
		planar_offset[2] = planar_offset[1] +
				bytesperline_c * height;
		break;
	default: /* raw */
		FUNC6(sdev->dev,
			"Calculating pixelformat(0x%x)'s bytesperline as a packed format\n",
			config->pixelformat);
		bytesperline_y = (FUNC8(config->pixelformat) *
				  config->width) / 8;
		bytesperline_c = 0;
		planar_offset[1] = -1;
		planar_offset[2] = -1;
		break;
	}

	FUNC7(sdev->regmap, CSI_CH_BUF_LEN_REG,
		     FUNC0(bytesperline_c) |
		     FUNC1(bytesperline_y));
}