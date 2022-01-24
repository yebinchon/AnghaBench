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
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef  enum preview_ycpos_mode { ____Placeholder_preview_ycpos_mode } preview_ycpos_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int /*<<< orphan*/  ISPPRV_PCR_YCPOS_CrYCbY ; 
 int ISPPRV_PCR_YCPOS_SHIFT ; 
#define  MEDIA_BUS_FMT_UYVY8_1X16 129 
#define  MEDIA_BUS_FMT_YUYV8_1X16 128 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int YCPOS_CrYCbY ; 
 int YCPOS_YCrYCb ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct isp_device* FUNC1 (struct isp_prev_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_prev_device *prev, u32 pixelcode)
{
	struct isp_device *isp = FUNC1(prev);
	enum preview_ycpos_mode mode;

	switch (pixelcode) {
	case MEDIA_BUS_FMT_YUYV8_1X16:
		mode = YCPOS_CrYCbY;
		break;
	case MEDIA_BUS_FMT_UYVY8_1X16:
		mode = YCPOS_YCrYCb;
		break;
	default:
		return;
	}

	FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			ISPPRV_PCR_YCPOS_CrYCbY,
			mode << ISPPRV_PCR_YCPOS_SHIFT);
}