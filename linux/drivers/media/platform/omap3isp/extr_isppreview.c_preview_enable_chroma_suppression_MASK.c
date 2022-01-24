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
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int /*<<< orphan*/  ISPPRV_PCR_SUPEN ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_prev_device*) ; 

__attribute__((used)) static void
FUNC3(struct isp_prev_device *prev, bool enable)
{
	struct isp_device *isp = FUNC2(prev);

	if (enable)
		FUNC1(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_SUPEN);
	else
		FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_SUPEN);
}