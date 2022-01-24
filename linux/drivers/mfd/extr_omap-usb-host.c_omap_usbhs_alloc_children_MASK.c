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
struct usbhs_omap_platform_data {int dummy; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  OMAP_EHCI_DEVICE ; 
 int /*<<< orphan*/  OMAP_OHCI_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct usbhs_omap_platform_data* FUNC1 (struct device*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ,struct resource*,int,struct usbhs_omap_platform_data*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device				*dev = &pdev->dev;
	struct usbhs_omap_platform_data		*pdata = FUNC1(dev);
	struct platform_device			*ehci;
	struct platform_device			*ohci;
	struct resource				*res;
	struct resource				resources[2];
	int					ret;

	res = FUNC4(pdev, IORESOURCE_MEM, "ehci");
	if (!res) {
		FUNC0(dev, "EHCI get resource IORESOURCE_MEM failed\n");
		ret = -ENODEV;
		goto err_end;
	}
	resources[0] = *res;

	res = FUNC4(pdev, IORESOURCE_IRQ, "ehci-irq");
	if (!res) {
		FUNC0(dev, " EHCI get resource IORESOURCE_IRQ failed\n");
		ret = -ENODEV;
		goto err_end;
	}
	resources[1] = *res;

	ehci = FUNC2(OMAP_EHCI_DEVICE, resources, 2, pdata,
		sizeof(*pdata), dev);

	if (!ehci) {
		FUNC0(dev, "omap_usbhs_alloc_child failed\n");
		ret = -ENOMEM;
		goto err_end;
	}

	res = FUNC4(pdev, IORESOURCE_MEM, "ohci");
	if (!res) {
		FUNC0(dev, "OHCI get resource IORESOURCE_MEM failed\n");
		ret = -ENODEV;
		goto err_ehci;
	}
	resources[0] = *res;

	res = FUNC4(pdev, IORESOURCE_IRQ, "ohci-irq");
	if (!res) {
		FUNC0(dev, "OHCI get resource IORESOURCE_IRQ failed\n");
		ret = -ENODEV;
		goto err_ehci;
	}
	resources[1] = *res;

	ohci = FUNC2(OMAP_OHCI_DEVICE, resources, 2, pdata,
		sizeof(*pdata), dev);
	if (!ohci) {
		FUNC0(dev, "omap_usbhs_alloc_child failed\n");
		ret = -ENOMEM;
		goto err_ehci;
	}

	return 0;

err_ehci:
	FUNC3(ehci);

err_end:
	return ret;
}