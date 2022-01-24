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
struct ispstat {int /*<<< orphan*/  isp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPH3A_PCR ; 
 int /*<<< orphan*/  ISPH3A_PCR_AEW_EN ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_H3A ; 
 int /*<<< orphan*/  OMAP3_ISP_SUBCLK_AEWB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ispstat *aewb, int enable)
{
	if (enable) {
		FUNC1(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
			    ISPH3A_PCR_AEW_EN);
		FUNC3(aewb->isp, OMAP3_ISP_SUBCLK_AEWB);
	} else {
		FUNC0(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
			    ISPH3A_PCR_AEW_EN);
		FUNC2(aewb->isp, OMAP3_ISP_SUBCLK_AEWB);
	}
}