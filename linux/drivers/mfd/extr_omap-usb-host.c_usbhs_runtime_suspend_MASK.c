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
struct usbhs_hcd_omap {int nports; int /*<<< orphan*/  ehci_logic_fck; int /*<<< orphan*/ * utmi_clk; int /*<<< orphan*/ * hsic480m_clk; int /*<<< orphan*/ * hsic60m_clk; struct usbhs_omap_platform_data* pdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OMAP_EHCI_PORT_MODE_HSIC 129 
#define  OMAP_EHCI_PORT_MODE_TLL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct usbhs_hcd_omap* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_omap_platform_data*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct usbhs_hcd_omap		*omap = FUNC3(dev);
	struct usbhs_omap_platform_data	*pdata = omap->pdata;
	int i;

	FUNC2(dev, "usbhs_runtime_suspend\n");

	for (i = 0; i < omap->nports; i++) {
		switch (pdata->port_mode[i]) {
		case OMAP_EHCI_PORT_MODE_HSIC:
			if (!FUNC0(omap->hsic60m_clk[i]))
				FUNC1(omap->hsic60m_clk[i]);

			if (!FUNC0(omap->hsic480m_clk[i]))
				FUNC1(omap->hsic480m_clk[i]);
		/* Fall through - as utmi_clks were used in HSIC mode */

		case OMAP_EHCI_PORT_MODE_TLL:
			if (!FUNC0(omap->utmi_clk[i]))
				FUNC1(omap->utmi_clk[i]);
			break;
		default:
			break;
		}
	}

	if (!FUNC0(omap->ehci_logic_fck))
		FUNC1(omap->ehci_logic_fck);

	FUNC4(pdata);

	return 0;
}