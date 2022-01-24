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
typedef  int u32 ;
struct v4l2_pix_format {int bytesperline; int sizeimage; int height; int width; int pixelformat; } ;
struct mcam_camera {struct v4l2_pix_format pix_format; } ;

/* Variables and functions */
 int C0_DF_MASK ; 
 int C0_DF_RGB ; 
 int C0_DF_YUV ; 
 int C0_RGB4_XBGR ; 
 int C0_RGB5_BGGR ; 
 int C0_RGB5_GRBG ; 
 int C0_RGBF_444 ; 
 int C0_RGBF_565 ; 
 int C0_SIFM_MASK ; 
 int C0_SIF_HVSYNC ; 
 int C0_YUVE_NOSWAP ; 
 int C0_YUVE_SWAP24 ; 
 int C0_YUVE_VYUY ; 
 int C0_YUV_420PL ; 
 int C0_YUV_PACKED ; 
 int IMGP_UVP_MASK ; 
 int IMGP_YP_MASK ; 
 int IMGSZ_H_MASK ; 
 int IMGSZ_V_MASK ; 
 int IMGSZ_V_SHIFT ; 
 int /*<<< orphan*/  REG_CTRL0 ; 
 int /*<<< orphan*/  REG_IMGOFFSET ; 
 int /*<<< orphan*/  REG_IMGPITCH ; 
 int /*<<< orphan*/  REG_IMGSIZE ; 
#define  V4L2_PIX_FMT_RGB565 134 
#define  V4L2_PIX_FMT_SBGGR8 133 
#define  V4L2_PIX_FMT_XRGB444 132 
#define  V4L2_PIX_FMT_YUV420 131 
#define  V4L2_PIX_FMT_YUYV 130 
#define  V4L2_PIX_FMT_YVU420 129 
#define  V4L2_PIX_FMT_YVYU 128 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct mcam_camera *cam)
{
	struct v4l2_pix_format *fmt = &cam->pix_format;
	u32 widthy = 0, widthuv = 0, imgsz_h, imgsz_w;

	FUNC0(cam, "camera: bytesperline = %d; height = %d\n",
		fmt->bytesperline, fmt->sizeimage / fmt->bytesperline);
	imgsz_h = (fmt->height << IMGSZ_V_SHIFT) & IMGSZ_V_MASK;
	imgsz_w = (fmt->width * 2) & IMGSZ_H_MASK;

	switch (fmt->pixelformat) {
	case V4L2_PIX_FMT_YUYV:
	case V4L2_PIX_FMT_YVYU:
		widthy = fmt->width * 2;
		widthuv = 0;
		break;
	case V4L2_PIX_FMT_YUV420:
	case V4L2_PIX_FMT_YVU420:
		widthy = fmt->width;
		widthuv = fmt->width / 2;
		break;
	default:
		widthy = fmt->bytesperline;
		widthuv = 0;
		break;
	}

	FUNC3(cam, REG_IMGPITCH, widthuv << 16 | widthy,
			IMGP_YP_MASK | IMGP_UVP_MASK);
	FUNC2(cam, REG_IMGSIZE, imgsz_h | imgsz_w);
	FUNC2(cam, REG_IMGOFFSET, 0x0);

	/*
	 * Tell the controller about the image format we are using.
	 */
	switch (fmt->pixelformat) {
	case V4L2_PIX_FMT_YUV420:
	case V4L2_PIX_FMT_YVU420:
		FUNC3(cam, REG_CTRL0,
			C0_DF_YUV | C0_YUV_420PL | C0_YUVE_VYUY, C0_DF_MASK);
		break;
	case V4L2_PIX_FMT_YUYV:
		FUNC3(cam, REG_CTRL0,
			C0_DF_YUV | C0_YUV_PACKED | C0_YUVE_NOSWAP, C0_DF_MASK);
		break;
	case V4L2_PIX_FMT_YVYU:
		FUNC3(cam, REG_CTRL0,
			C0_DF_YUV | C0_YUV_PACKED | C0_YUVE_SWAP24, C0_DF_MASK);
		break;
	case V4L2_PIX_FMT_XRGB444:
		FUNC3(cam, REG_CTRL0,
			C0_DF_RGB | C0_RGBF_444 | C0_RGB4_XBGR, C0_DF_MASK);
		break;
	case V4L2_PIX_FMT_RGB565:
		FUNC3(cam, REG_CTRL0,
			C0_DF_RGB | C0_RGBF_565 | C0_RGB5_BGGR, C0_DF_MASK);
		break;
	case V4L2_PIX_FMT_SBGGR8:
		FUNC3(cam, REG_CTRL0,
			C0_DF_RGB | C0_RGB5_GRBG, C0_DF_MASK);
		break;
	default:
		FUNC1(cam, "camera: unknown format: %#x\n", fmt->pixelformat);
		break;
	}

	/*
	 * Make sure it knows we want to use hsync/vsync.
	 */
	FUNC3(cam, REG_CTRL0, C0_SIF_HVSYNC, C0_SIFM_MASK);
}