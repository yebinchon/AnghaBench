#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_cdns_priv {struct sdhci_cdns_phy_param* phy_params; } ;
struct sdhci_cdns_phy_param {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  property; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* sdhci_cdns_phy_cfgs ; 

__attribute__((used)) static void FUNC2(struct device_node *np,
				       struct sdhci_cdns_priv *priv)
{
	struct sdhci_cdns_phy_param *p = priv->phy_params;
	u32 val;
	int ret, i;

	for (i = 0; i < FUNC0(sdhci_cdns_phy_cfgs); i++) {
		ret = FUNC1(np, sdhci_cdns_phy_cfgs[i].property,
					   &val);
		if (ret)
			continue;

		p->addr = sdhci_cdns_phy_cfgs[i].addr;
		p->data = val;
		p++;
	}
}