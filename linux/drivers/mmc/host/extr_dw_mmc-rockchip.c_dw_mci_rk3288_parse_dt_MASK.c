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
struct dw_mci_rockchip_priv_data {int num_phases; int default_sample_phase; void* sample_clk; void* drv_clk; } ;
struct dw_mci {struct dw_mci_rockchip_priv_data* priv; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 void* FUNC2 (TYPE_1__*,char*) ; 
 struct dw_mci_rockchip_priv_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct dw_mci *host)
{
	struct device_node *np = host->dev->of_node;
	struct dw_mci_rockchip_priv_data *priv;

	priv = FUNC3(host->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (FUNC4(np, "rockchip,desired-num-phases",
					&priv->num_phases))
		priv->num_phases = 360;

	if (FUNC4(np, "rockchip,default-sample-phase",
					&priv->default_sample_phase))
		priv->default_sample_phase = 0;

	priv->drv_clk = FUNC2(host->dev, "ciu-drive");
	if (FUNC0(priv->drv_clk))
		FUNC1(host->dev, "ciu-drive not available\n");

	priv->sample_clk = FUNC2(host->dev, "ciu-sample");
	if (FUNC0(priv->sample_clk))
		FUNC1(host->dev, "ciu-sample not available\n");

	host->priv = priv;

	return 0;
}