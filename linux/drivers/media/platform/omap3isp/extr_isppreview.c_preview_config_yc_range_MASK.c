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
struct omap3isp_prev_yclimit {int maxC; int maxY; int minC; int minY; } ;
struct prev_params {struct omap3isp_prev_yclimit yclimit; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_SETUP_YC ; 
 int ISPPRV_SETUP_YC_MAXC_SHIFT ; 
 int ISPPRV_SETUP_YC_MAXY_SHIFT ; 
 int ISPPRV_SETUP_YC_MINC_SHIFT ; 
 int ISPPRV_SETUP_YC_MINY_SHIFT ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_prev_device*) ; 

__attribute__((used)) static void
FUNC2(struct isp_prev_device *prev,
			const struct prev_params *params)
{
	struct isp_device *isp = FUNC1(prev);
	const struct omap3isp_prev_yclimit *yc = &params->yclimit;

	FUNC0(isp,
		       yc->maxC << ISPPRV_SETUP_YC_MAXC_SHIFT |
		       yc->maxY << ISPPRV_SETUP_YC_MAXY_SHIFT |
		       yc->minC << ISPPRV_SETUP_YC_MINC_SHIFT |
		       yc->minY << ISPPRV_SETUP_YC_MINY_SHIFT,
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_SETUP_YC);
}