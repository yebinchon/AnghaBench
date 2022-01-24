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
struct usbhs_omap_platform_data {int* port_mode; } ;
struct usbhs_hcd_omap {int nports; int /*<<< orphan*/ * utmi_clk; int /*<<< orphan*/ * hsic480m_clk; int /*<<< orphan*/ * hsic60m_clk; int /*<<< orphan*/  ehci_logic_fck; struct usbhs_omap_platform_data* pdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OMAP_EHCI_PORT_MODE_HSIC 129 
#define  OMAP_EHCI_PORT_MODE_TLL 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 struct usbhs_hcd_omap* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_omap_platform_data*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct usbhs_hcd_omap		*omap = FUNC4(dev);
	struct usbhs_omap_platform_data	*pdata = omap->pdata;
	int i, r;

	FUNC2(dev, "usbhs_runtime_resume\n");

	FUNC5(pdata);

	if (!FUNC0(omap->ehci_logic_fck))
		FUNC1(omap->ehci_logic_fck);

	for (i = 0; i < omap->nports; i++) {
		switch (pdata->port_mode[i]) {
		case OMAP_EHCI_PORT_MODE_HSIC:
			if (!FUNC0(omap->hsic60m_clk[i])) {
				r = FUNC1(omap->hsic60m_clk[i]);
				if (r) {
					FUNC3(dev,
					 "Can't enable port %d hsic60m clk:%d\n",
					 i, r);
				}
			}

			if (!FUNC0(omap->hsic480m_clk[i])) {
				r = FUNC1(omap->hsic480m_clk[i]);
				if (r) {
					FUNC3(dev,
					 "Can't enable port %d hsic480m clk:%d\n",
					 i, r);
				}
			}
		/* Fall through - as HSIC mode needs utmi_clk */

		case OMAP_EHCI_PORT_MODE_TLL:
			if (!FUNC0(omap->utmi_clk[i])) {
				r = FUNC1(omap->utmi_clk[i]);
				if (r) {
					FUNC3(dev,
					 "Can't enable port %d clk : %d\n",
					 i, r);
				}
			}
			break;
		default:
			break;
		}
	}

	return 0;
}