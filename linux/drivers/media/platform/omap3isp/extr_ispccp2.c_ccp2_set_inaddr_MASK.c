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
typedef  int /*<<< orphan*/  u32 ;
struct isp_device {int dummy; } ;
struct isp_ccp2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCP2_LCM_SRC_ADDR ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCP2 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_ccp2_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_ccp2_device *ccp2, u32 addr)
{
	struct isp_device *isp = FUNC1(ccp2);

	FUNC0(isp, addr, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCM_SRC_ADDR);
}