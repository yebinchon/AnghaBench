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
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPRSZ_CNT ; 
 int /*<<< orphan*/  ISPRSZ_CNT_YCPOS ; 
#define  MEDIA_BUS_FMT_UYVY8_1X16 129 
#define  MEDIA_BUS_FMT_YUYV8_1X16 128 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_RESZ ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_res_device *res, u32 pixelcode)
{
	struct isp_device *isp = FUNC2(res);

	switch (pixelcode) {
	case MEDIA_BUS_FMT_YUYV8_1X16:
		FUNC1(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_YCPOS);
		break;
	case MEDIA_BUS_FMT_UYVY8_1X16:
		FUNC0(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_YCPOS);
		break;
	default:
		return;
	}
}