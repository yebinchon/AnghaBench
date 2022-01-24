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
struct isp_ccdc_device {int update; } ;

/* Variables and functions */
 int OMAP3ISP_CCDC_ALAW ; 
 int OMAP3ISP_CCDC_BCOMP ; 
 int OMAP3ISP_CCDC_BLCLAMP ; 
 int OMAP3ISP_CCDC_LPF ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC4(struct isp_ccdc_device *ccdc)
{
	if (ccdc->update & OMAP3ISP_CCDC_ALAW) {
		FUNC0(ccdc);
		ccdc->update &= ~OMAP3ISP_CCDC_ALAW;
	}

	if (ccdc->update & OMAP3ISP_CCDC_LPF) {
		FUNC3(ccdc);
		ccdc->update &= ~OMAP3ISP_CCDC_LPF;
	}

	if (ccdc->update & OMAP3ISP_CCDC_BLCLAMP) {
		FUNC2(ccdc);
		ccdc->update &= ~OMAP3ISP_CCDC_BLCLAMP;
	}

	if (ccdc->update & OMAP3ISP_CCDC_BCOMP) {
		FUNC1(ccdc);
		ccdc->update &= ~OMAP3ISP_CCDC_BCOMP;
	}
}