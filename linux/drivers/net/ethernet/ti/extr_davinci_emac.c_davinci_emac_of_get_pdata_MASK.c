#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {struct emac_platform_data* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct emac_platform_data* data; } ;
struct emac_priv {int /*<<< orphan*/  phy_node; } ;
struct emac_platform_data {int /*<<< orphan*/  hw_ram_addr; int /*<<< orphan*/  version; int /*<<< orphan*/  interrupt_disable; int /*<<< orphan*/  interrupt_enable; int /*<<< orphan*/ * phy_id; int /*<<< orphan*/  no_bd_ram; int /*<<< orphan*/  rmii_en; int /*<<< orphan*/  ctrl_ram_size; int /*<<< orphan*/  ctrl_ram_offset; int /*<<< orphan*/  ctrl_mod_reg_offset; int /*<<< orphan*/  ctrl_reg_offset; int /*<<< orphan*/  mac_addr; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  EMAC_VERSION_2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  davinci_emac_of_match ; 
 struct emac_platform_data* FUNC2 (TYPE_1__*) ; 
 struct emac_platform_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct device_node*) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct emac_platform_data *
FUNC15(struct platform_device *pdev, struct emac_priv *priv)
{
	struct device_node *np;
	const struct of_device_id *match;
	const struct emac_platform_data *auxdata;
	struct emac_platform_data *pdata = NULL;
	const u8 *mac_addr;

	if (!FUNC0(CONFIG_OF) || !pdev->dev.of_node)
		return FUNC2(&pdev->dev);

	pdata = FUNC3(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	np = pdev->dev.of_node;
	pdata->version = EMAC_VERSION_2;

	if (!FUNC5(pdata->mac_addr)) {
		mac_addr = FUNC6(np);
		if (!FUNC1(mac_addr))
			FUNC4(pdata->mac_addr, mac_addr);
	}

	FUNC13(np, "ti,davinci-ctrl-reg-offset",
			     &pdata->ctrl_reg_offset);

	FUNC13(np, "ti,davinci-ctrl-mod-reg-offset",
			     &pdata->ctrl_mod_reg_offset);

	FUNC13(np, "ti,davinci-ctrl-ram-offset",
			     &pdata->ctrl_ram_offset);

	FUNC13(np, "ti,davinci-ctrl-ram-size",
			     &pdata->ctrl_ram_size);

	FUNC14(np, "ti,davinci-rmii-en", &pdata->rmii_en);

	pdata->no_bd_ram = FUNC12(np, "ti,davinci-no-bd-ram");

	priv->phy_node = FUNC9(np, "phy-handle", 0);
	if (!priv->phy_node) {
		if (!FUNC10(np))
			pdata->phy_id = NULL;
		else if (FUNC11(np) >= 0)
			priv->phy_node = FUNC8(np);
	}

	auxdata = pdev->dev.platform_data;
	if (auxdata) {
		pdata->interrupt_enable = auxdata->interrupt_enable;
		pdata->interrupt_disable = auxdata->interrupt_disable;
	}

	match = FUNC7(davinci_emac_of_match, &pdev->dev);
	if (match && match->data) {
		auxdata = match->data;
		pdata->version = auxdata->version;
		pdata->hw_ram_addr = auxdata->hw_ram_addr;
	}

	return  pdata;
}