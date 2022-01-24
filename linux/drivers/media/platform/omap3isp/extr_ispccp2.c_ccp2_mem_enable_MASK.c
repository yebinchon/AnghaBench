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
typedef  scalar_t__ u8 ;
struct isp_device {int dummy; } ;
struct isp_ccp2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCP2_CTRL ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_MODE ; 
 int /*<<< orphan*/  ISPCCP2_LCM_CTRL ; 
 int /*<<< orphan*/  ISPCCP2_LCM_CTRL_CHAN_EN ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCP2 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccp2_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_ccp2_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_ccp2_device *ccp2, u8 enable)
{
	struct isp_device *isp = FUNC2(ccp2);

	if (enable)
		FUNC0(ccp2, 0);

	/* Enable/Disable ccp2 interface in ccp2 mode */
	FUNC1(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_CTRL,
			ISPCCP2_CTRL_MODE, enable ? ISPCCP2_CTRL_MODE : 0);

	FUNC1(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCM_CTRL,
			ISPCCP2_LCM_CTRL_CHAN_EN,
			enable ? ISPCCP2_LCM_CTRL_CHAN_EN : 0);
}