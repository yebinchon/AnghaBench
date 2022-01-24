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
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPSBL_CCDC_WR_0 ; 
 int ISPSBL_CCDC_WR_0_DATA_READY ; 
 int /*<<< orphan*/  ISPSBL_CCDC_WR_1 ; 
 int /*<<< orphan*/  ISPSBL_CCDC_WR_2 ; 
 int /*<<< orphan*/  ISPSBL_CCDC_WR_3 ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_SBL ; 
 int FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct isp_ccdc_device*) ; 
 struct isp_device* FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static int FUNC3(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC2(ccdc);

	return FUNC1(ccdc)
		| (FUNC0(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_0) &
		   ISPSBL_CCDC_WR_0_DATA_READY)
		| (FUNC0(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_1) &
		   ISPSBL_CCDC_WR_0_DATA_READY)
		| (FUNC0(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_2) &
		   ISPSBL_CCDC_WR_0_DATA_READY)
		| (FUNC0(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_3) &
		   ISPSBL_CCDC_WR_0_DATA_READY);
}