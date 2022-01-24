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
struct isp_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct isp_ccdc_device {TYPE_1__ lsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCDC_LSC_CONFIG ; 
 int /*<<< orphan*/  ISPCCDC_LSC_ENABLE ; 
 int /*<<< orphan*/  LSC_STATE_STOPPED ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC1(ccdc);
	/*
	 * From OMAP3 TRM: When this event is pending, the module
	 * goes into transparent mode (output =input). Normal
	 * operation can be resumed at the start of the next frame
	 * after:
	 *  1) Clearing this event
	 *  2) Disabling the LSC module
	 *  3) Enabling it
	 */
	FUNC0(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_LSC_CONFIG,
		    ISPCCDC_LSC_ENABLE);
	ccdc->lsc.state = LSC_STATE_STOPPED;
}