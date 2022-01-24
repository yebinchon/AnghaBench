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
struct usbhs_omap_platform_data {int nports; int* port_mode; int /*<<< orphan*/  single_ulpi_bypass; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int OMAP3_HS_USB_PORTS ; 
 int OMAP_USBHS_PORT_MODE_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 int FUNC5 (struct device_node*,char*,char const**) ; 
 int FUNC6 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  port_modes ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
					struct usbhs_omap_platform_data *pdata)
{
	int ret, i;
	struct device_node *node = dev->of_node;

	ret = FUNC6(node, "num-ports", &pdata->nports);
	if (ret)
		pdata->nports = 0;

	if (pdata->nports > OMAP3_HS_USB_PORTS) {
		FUNC2(dev, "Too many num_ports <%d> in device tree. Max %d\n",
				pdata->nports, OMAP3_HS_USB_PORTS);
		return -ENODEV;
	}

	/* get port modes */
	for (i = 0; i < OMAP3_HS_USB_PORTS; i++) {
		char prop[11];
		const char *mode;

		pdata->port_mode[i] = OMAP_USBHS_PORT_MODE_UNUSED;

		FUNC7(prop, sizeof(prop), "port%d-mode", i + 1);
		ret = FUNC5(node, prop, &mode);
		if (ret < 0)
			continue;

		/* get 'enum usbhs_omap_port_mode' from port mode string */
		ret = FUNC3(port_modes, FUNC0(port_modes), mode);
		if (ret < 0) {
			FUNC2(dev, "Invalid port%d-mode \"%s\" in device tree\n",
					i, mode);
			return -ENODEV;
		}

		FUNC1(dev, "port%d-mode: %s -> %d\n", i, mode, ret);
		pdata->port_mode[i] = ret;
	}

	/* get flags */
	pdata->single_ulpi_bypass = FUNC4(node,
						"single-ulpi-bypass");

	return 0;
}