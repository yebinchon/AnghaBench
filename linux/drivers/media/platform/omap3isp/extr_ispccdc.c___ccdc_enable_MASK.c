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
struct isp_ccdc_device {int running; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCDC_PCR ; 
 int /*<<< orphan*/  ISPCCDC_PCR_EN ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_ccdc_device *ccdc, int enable)
{
	struct isp_device *isp = FUNC1(ccdc);

	FUNC0(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_PCR,
			ISPCCDC_PCR_EN, enable ? ISPCCDC_PCR_EN : 0);

	ccdc->running = enable;
}