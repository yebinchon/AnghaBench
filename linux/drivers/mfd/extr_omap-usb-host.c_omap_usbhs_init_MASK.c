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
struct usbhs_hcd_omap {int usbhs_rev; int /*<<< orphan*/  uhh_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int OMAP4_UHH_HOSTCONFIG_APP_START_CLK ; 
 int /*<<< orphan*/  OMAP_UHH_HOSTCONFIG ; 
 unsigned int OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN ; 
 unsigned int OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN ; 
 unsigned int OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN ; 
 unsigned int OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN ; 
#define  OMAP_USBHS_REV1 129 
#define  OMAP_USBHS_REV2 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct usbhs_hcd_omap* FUNC1 (struct device*) ; 
 unsigned int FUNC2 (struct usbhs_hcd_omap*,unsigned int) ; 
 unsigned int FUNC3 (struct usbhs_hcd_omap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct usbhs_hcd_omap		*omap = FUNC1(dev);
	unsigned			reg;

	FUNC0(dev, "starting TI HSUSB Controller\n");

	FUNC4(dev);

	reg = FUNC6(omap->uhh_base, OMAP_UHH_HOSTCONFIG);
	/* setup ULPI bypass and burst configurations */
	reg |= (OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN
			| OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN
			| OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN);
	reg |= OMAP4_UHH_HOSTCONFIG_APP_START_CLK;
	reg &= ~OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN;

	switch (omap->usbhs_rev) {
	case OMAP_USBHS_REV1:
		reg = FUNC2(omap, reg);
		break;

	case OMAP_USBHS_REV2:
		reg = FUNC3(omap, reg);
		break;

	default:	/* newer revisions */
		reg = FUNC3(omap, reg);
		break;
	}

	FUNC7(omap->uhh_base, OMAP_UHH_HOSTCONFIG, reg);
	FUNC0(dev, "UHH setup done, uhh_hostconfig=%x\n", reg);

	FUNC5(dev);
}