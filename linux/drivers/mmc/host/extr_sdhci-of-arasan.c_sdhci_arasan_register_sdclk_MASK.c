#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct clk_init_data* init; } ;
struct sdhci_arasan_data {int /*<<< orphan*/  sdcardclk; TYPE_1__ sdcardclk_hw; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_GET_RATE_NOCACHE ; 
 char* FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  arasan_sdcardclk_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_1__*) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sdhci_arasan_data *sdhci_arasan,
				       struct clk *clk_xin,
				       struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct clk_init_data sdcardclk_init;
	const char *parent_clk_name;
	int ret;

	/* Providing a clock to the PHY is optional; no error if missing */
	if (!FUNC4(np, "#clock-cells", NULL))
		return 0;

	ret = FUNC5(np, "clock-output-names", 0,
					    &sdcardclk_init.name);
	if (ret) {
		FUNC1(dev, "DT has #clock-cells but no clock-output-names\n");
		return ret;
	}

	parent_clk_name = FUNC0(clk_xin);
	sdcardclk_init.parent_names = &parent_clk_name;
	sdcardclk_init.num_parents = 1;
	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
	sdcardclk_init.ops = &arasan_sdcardclk_ops;

	sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
	sdhci_arasan->sdcardclk =
		FUNC2(dev, &sdhci_arasan->sdcardclk_hw);
	sdhci_arasan->sdcardclk_hw.init = NULL;

	ret = FUNC3(np, of_clk_src_simple_get,
				  sdhci_arasan->sdcardclk);
	if (ret)
		FUNC1(dev, "Failed to add clock provider\n");

	return ret;
}