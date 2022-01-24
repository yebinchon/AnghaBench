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
struct omap3isp_prev_dcor {scalar_t__ couplet_mode_en; int /*<<< orphan*/ * detect_correct; } ;
struct prev_params {struct omap3isp_prev_dcor dcor; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_CDC_THR0 ; 
 int /*<<< orphan*/  ISPPRV_CDC_THR1 ; 
 int /*<<< orphan*/  ISPPRV_CDC_THR2 ; 
 int /*<<< orphan*/  ISPPRV_CDC_THR3 ; 
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int /*<<< orphan*/  ISPPRV_PCR_DCCOUP ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_prev_device*) ; 

__attribute__((used)) static void
FUNC3(struct isp_prev_device *prev,
		    const struct prev_params *params)
{
	struct isp_device *isp = FUNC2(prev);
	const struct omap3isp_prev_dcor *dcor = &params->dcor;

	FUNC1(isp, dcor->detect_correct[0],
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR0);
	FUNC1(isp, dcor->detect_correct[1],
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR1);
	FUNC1(isp, dcor->detect_correct[2],
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR2);
	FUNC1(isp, dcor->detect_correct[3],
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR3);
	FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			ISPPRV_PCR_DCCOUP,
			dcor->couplet_mode_en ? ISPPRV_PCR_DCCOUP : 0);
}