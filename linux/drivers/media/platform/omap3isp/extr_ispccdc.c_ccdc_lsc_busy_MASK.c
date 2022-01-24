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
 int ISPCCDC_LSC_BUSY ; 
 int /*<<< orphan*/  ISPCCDC_LSC_CONFIG ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_ccdc_device*) ; 

__attribute__((used)) static int FUNC2(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC1(ccdc);

	return FUNC0(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_LSC_CONFIG) &
			     ISPCCDC_LSC_BUSY;
}