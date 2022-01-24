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
struct usbhs_omap_platform_data {scalar_t__ nports; int /*<<< orphan*/ * port_mode; } ;
struct usbhs_hcd_omap {int usbhs_rev; scalar_t__ nports; void* init_60m_fclk; void* utmi_p2_gfclk; void* xclk60mhsp2_ck; void* utmi_p1_gfclk; void* xclk60mhsp1_ck; void** hsic60m_clk; void** hsic480m_clk; void** utmi_clk; void* ehci_logic_fck; void* uhh_base; struct usbhs_omap_platform_data* pdata; } ;
struct resource {int dummy; } ;
struct device {scalar_t__ of_node; struct usbhs_omap_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  clkname ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ OMAP3_HS_USB_PORTS ; 
 int /*<<< orphan*/  OMAP_UHH_REVISION ; 
#define  OMAP_USBHS_REV1 129 
#define  OMAP_USBHS_REV2 128 
 int FUNC2 (void*) ; 
 int FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct usbhs_omap_platform_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,scalar_t__,scalar_t__) ; 
 void* FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,struct resource*) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usbhs_omap_platform_data*) ; 
 int FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct usbhs_hcd_omap*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,int) ; 
 int /*<<< orphan*/  usbhs_child_match_table ; 
 int FUNC25 (struct device*,struct usbhs_omap_platform_data*) ; 
 int FUNC26 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device			*dev =  &pdev->dev;
	struct usbhs_omap_platform_data	*pdata = FUNC6(dev);
	struct usbhs_hcd_omap		*omap;
	struct resource			*res;
	int				ret = 0;
	int				i;
	bool				need_logic_fck;

	if (dev->of_node) {
		/* For DT boot we populate platform data from OF node */
		pdata = FUNC10(dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		ret = FUNC25(dev, pdata);
		if (ret)
			return ret;

		dev->platform_data = pdata;
	}

	if (!pdata) {
		FUNC5(dev, "Missing platform data\n");
		return -ENODEV;
	}

	if (pdata->nports > OMAP3_HS_USB_PORTS) {
		FUNC7(dev, "Too many num_ports <%d> in platform_data. Max %d\n",
				pdata->nports, OMAP3_HS_USB_PORTS);
		return -ENODEV;
	}

	omap = FUNC10(dev, sizeof(*omap), GFP_KERNEL);
	if (!omap) {
		FUNC5(dev, "Memory allocation failed\n");
		return -ENOMEM;
	}

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	omap->uhh_base = FUNC9(dev, res);
	if (FUNC1(omap->uhh_base))
		return FUNC2(omap->uhh_base);

	omap->pdata = pdata;

	/* Initialize the TLL subsystem */
	FUNC15(pdata);

	FUNC21(dev);

	FUNC19(pdev, omap);
	FUNC22(dev);

	omap->usbhs_rev = FUNC26(omap->uhh_base, OMAP_UHH_REVISION);

	/* we need to call runtime suspend before we update omap->nports
	 * to prevent unbalanced clk_disable()
	 */
	FUNC23(dev);

	/*
	 * If platform data contains nports then use that
	 * else make out number of ports from USBHS revision
	 */
	if (pdata->nports) {
		omap->nports = pdata->nports;
	} else {
		switch (omap->usbhs_rev) {
		case OMAP_USBHS_REV1:
			omap->nports = 3;
			break;
		case OMAP_USBHS_REV2:
			omap->nports = 2;
			break;
		default:
			omap->nports = OMAP3_HS_USB_PORTS;
			FUNC4(dev,
			 "USB HOST Rev:0x%x not recognized, assuming %d ports\n",
			 omap->usbhs_rev, omap->nports);
			break;
		}
		pdata->nports = omap->nports;
	}

	i = sizeof(struct clk *) * omap->nports;
	omap->utmi_clk = FUNC10(dev, i, GFP_KERNEL);
	omap->hsic480m_clk = FUNC10(dev, i, GFP_KERNEL);
	omap->hsic60m_clk = FUNC10(dev, i, GFP_KERNEL);

	if (!omap->utmi_clk || !omap->hsic480m_clk || !omap->hsic60m_clk) {
		FUNC5(dev, "Memory allocation failed\n");
		ret = -ENOMEM;
		goto err_mem;
	}

	/* Set all clocks as invalid to begin with */
	omap->ehci_logic_fck = FUNC0(-ENODEV);
	omap->init_60m_fclk = FUNC0(-ENODEV);
	omap->utmi_p1_gfclk = FUNC0(-ENODEV);
	omap->utmi_p2_gfclk = FUNC0(-ENODEV);
	omap->xclk60mhsp1_ck = FUNC0(-ENODEV);
	omap->xclk60mhsp2_ck = FUNC0(-ENODEV);

	for (i = 0; i < omap->nports; i++) {
		omap->utmi_clk[i] = FUNC0(-ENODEV);
		omap->hsic480m_clk[i] = FUNC0(-ENODEV);
		omap->hsic60m_clk[i] = FUNC0(-ENODEV);
	}

	/* for OMAP3 i.e. USBHS REV1 */
	if (omap->usbhs_rev == OMAP_USBHS_REV1) {
		need_logic_fck = false;
		for (i = 0; i < omap->nports; i++) {
			if (FUNC12(pdata->port_mode[i]) ||
			    FUNC13(pdata->port_mode[i]) ||
			    FUNC11(pdata->port_mode[i]))

				need_logic_fck |= true;
		}

		if (need_logic_fck) {
			omap->ehci_logic_fck = FUNC8(dev,
							    "usbhost_120m_fck");
			if (FUNC1(omap->ehci_logic_fck)) {
				ret = FUNC2(omap->ehci_logic_fck);
				FUNC5(dev, "usbhost_120m_fck failed:%d\n",
					ret);
				goto err_mem;
			}
		}
		goto initialize;
	}

	/* for OMAP4+ i.e. USBHS REV2+ */
	omap->utmi_p1_gfclk = FUNC8(dev, "utmi_p1_gfclk");
	if (FUNC1(omap->utmi_p1_gfclk)) {
		ret = FUNC2(omap->utmi_p1_gfclk);
		FUNC5(dev, "utmi_p1_gfclk failed error:%d\n", ret);
		goto err_mem;
	}

	omap->utmi_p2_gfclk = FUNC8(dev, "utmi_p2_gfclk");
	if (FUNC1(omap->utmi_p2_gfclk)) {
		ret = FUNC2(omap->utmi_p2_gfclk);
		FUNC5(dev, "utmi_p2_gfclk failed error:%d\n", ret);
		goto err_mem;
	}

	omap->xclk60mhsp1_ck = FUNC8(dev, "refclk_60m_ext_p1");
	if (FUNC1(omap->xclk60mhsp1_ck)) {
		ret = FUNC2(omap->xclk60mhsp1_ck);
		FUNC5(dev, "refclk_60m_ext_p1 failed error:%d\n", ret);
		goto err_mem;
	}

	omap->xclk60mhsp2_ck = FUNC8(dev, "refclk_60m_ext_p2");
	if (FUNC1(omap->xclk60mhsp2_ck)) {
		ret = FUNC2(omap->xclk60mhsp2_ck);
		FUNC5(dev, "refclk_60m_ext_p2 failed error:%d\n", ret);
		goto err_mem;
	}

	omap->init_60m_fclk = FUNC8(dev, "refclk_60m_int");
	if (FUNC1(omap->init_60m_fclk)) {
		ret = FUNC2(omap->init_60m_fclk);
		FUNC5(dev, "refclk_60m_int failed error:%d\n", ret);
		goto err_mem;
	}

	for (i = 0; i < omap->nports; i++) {
		char clkname[30];

		/* clock names are indexed from 1*/
		FUNC24(clkname, sizeof(clkname),
				"usb_host_hs_utmi_p%d_clk", i + 1);

		/* If a clock is not found we won't bail out as not all
		 * platforms have all clocks and we can function without
		 * them
		 */
		omap->utmi_clk[i] = FUNC8(dev, clkname);
		if (FUNC1(omap->utmi_clk[i])) {
			ret = FUNC2(omap->utmi_clk[i]);
			FUNC5(dev, "Failed to get clock : %s : %d\n",
				clkname, ret);
			goto err_mem;
		}

		FUNC24(clkname, sizeof(clkname),
				"usb_host_hs_hsic480m_p%d_clk", i + 1);
		omap->hsic480m_clk[i] = FUNC8(dev, clkname);
		if (FUNC1(omap->hsic480m_clk[i])) {
			ret = FUNC2(omap->hsic480m_clk[i]);
			FUNC5(dev, "Failed to get clock : %s : %d\n",
				clkname, ret);
			goto err_mem;
		}

		FUNC24(clkname, sizeof(clkname),
				"usb_host_hs_hsic60m_p%d_clk", i + 1);
		omap->hsic60m_clk[i] = FUNC8(dev, clkname);
		if (FUNC1(omap->hsic60m_clk[i])) {
			ret = FUNC2(omap->hsic60m_clk[i]);
			FUNC5(dev, "Failed to get clock : %s : %d\n",
				clkname, ret);
			goto err_mem;
		}
	}

	if (FUNC12(pdata->port_mode[0])) {
		ret = FUNC3(omap->utmi_p1_gfclk,
					omap->xclk60mhsp1_ck);
		if (ret != 0) {
			FUNC5(dev, "xclk60mhsp1_ck set parent failed: %d\n",
				ret);
			goto err_mem;
		}
	} else if (FUNC13(pdata->port_mode[0])) {
		ret = FUNC3(omap->utmi_p1_gfclk,
					omap->init_60m_fclk);
		if (ret != 0) {
			FUNC5(dev, "P0 init_60m_fclk set parent failed: %d\n",
				ret);
			goto err_mem;
		}
	}

	if (FUNC12(pdata->port_mode[1])) {
		ret = FUNC3(omap->utmi_p2_gfclk,
					omap->xclk60mhsp2_ck);
		if (ret != 0) {
			FUNC5(dev, "xclk60mhsp2_ck set parent failed: %d\n",
				ret);
			goto err_mem;
		}
	} else if (FUNC13(pdata->port_mode[1])) {
		ret = FUNC3(omap->utmi_p2_gfclk,
						omap->init_60m_fclk);
		if (ret != 0) {
			FUNC5(dev, "P1 init_60m_fclk set parent failed: %d\n",
				ret);
			goto err_mem;
		}
	}

initialize:
	FUNC17(dev);

	if (dev->of_node) {
		ret = FUNC14(dev->of_node,
				usbhs_child_match_table, NULL, dev);

		if (ret) {
			FUNC5(dev, "Failed to create DT children: %d\n", ret);
			goto err_mem;
		}

	} else {
		ret = FUNC16(pdev);
		if (ret) {
			FUNC5(dev, "omap_usbhs_alloc_children failed: %d\n",
						ret);
			goto err_mem;
		}
	}

	return 0;

err_mem:
	FUNC20(dev);

	return ret;
}