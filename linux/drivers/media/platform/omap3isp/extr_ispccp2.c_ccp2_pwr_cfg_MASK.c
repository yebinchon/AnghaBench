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
struct isp_device {scalar_t__ revision; scalar_t__ autoidle; } ;
struct isp_ccp2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCP2_SYSCONFIG ; 
 int ISPCCP2_SYSCONFIG_AUTO_IDLE ; 
 int ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART ; 
 scalar_t__ ISP_REVISION_15_0 ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCP2 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_ccp2_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_ccp2_device *ccp2)
{
	struct isp_device *isp = FUNC1(ccp2);

	FUNC0(isp, ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART |
			((isp->revision == ISP_REVISION_15_0 && isp->autoidle) ?
			  ISPCCP2_SYSCONFIG_AUTO_IDLE : 0),
		       OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSCONFIG);
}