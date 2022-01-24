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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_mc_timing {int /*<<< orphan*/  emem_data; int /*<<< orphan*/  rate; } ;
struct tegra_mc {int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_emem_regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_mc *mc,
			   struct tegra_mc_timing *timing,
			   struct device_node *node)
{
	int err;
	u32 tmp;

	err = FUNC2(node, "clock-frequency", &tmp);
	if (err) {
		FUNC0(mc->dev,
			"timing %pOFn: failed to read rate\n", node);
		return err;
	}

	timing->rate = tmp;
	timing->emem_data = FUNC1(mc->dev, mc->soc->num_emem_regs,
					 sizeof(u32), GFP_KERNEL);
	if (!timing->emem_data)
		return -ENOMEM;

	err = FUNC3(node, "nvidia,emem-configuration",
					 timing->emem_data,
					 mc->soc->num_emem_regs);
	if (err) {
		FUNC0(mc->dev,
			"timing %pOFn: failed to read EMEM configuration\n",
			node);
		return err;
	}

	return 0;
}