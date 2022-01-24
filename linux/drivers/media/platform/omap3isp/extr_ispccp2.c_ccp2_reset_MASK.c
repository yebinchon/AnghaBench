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
struct isp_device {int /*<<< orphan*/  dev; } ;
struct isp_ccp2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCP2_SYSCONFIG ; 
 int /*<<< orphan*/  ISPCCP2_SYSCONFIG_SOFT_RESET ; 
 int /*<<< orphan*/  ISPCCP2_SYSSTATUS ; 
 int ISPCCP2_SYSSTATUS_RESET_DONE ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC3 (struct isp_ccp2_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct isp_ccp2_device *ccp2)
{
	struct isp_device *isp = FUNC3(ccp2);
	int i = 0;

	/* Reset the CSI1/CCP2B and wait for reset to complete */
	FUNC2(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSCONFIG,
		    ISPCCP2_SYSCONFIG_SOFT_RESET);
	while (!(FUNC1(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSSTATUS) &
		 ISPCCP2_SYSSTATUS_RESET_DONE)) {
		FUNC4(10);
		if (i++ > 10) {  /* try read 10 times */
			FUNC0(isp->dev,
				"omap3_isp: timeout waiting for ccp2 reset\n");
			break;
		}
	}
}