#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ clk_num; int /*<<< orphan*/ * clks; } ;
struct cam_clk_provider {scalar_t__ num_clocks; TYPE_3__ clk_data; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * clks; struct cam_clk* camclk; } ;
struct fimc_md {TYPE_2__* camclk; TYPE_1__* pdev; struct cam_clk_provider clk_provider; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {struct clk_init_data* init; } ;
struct cam_clk {TYPE_4__ hw; struct fimc_md* fmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  clock; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int FIMC_MAX_CAMCLKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cam_clk_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_md*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct fimc_md *fmd)
{
	struct cam_clk_provider *cp = &fmd->clk_provider;
	struct device *dev = &fmd->pdev->dev;
	int i, ret;

	for (i = 0; i < FIMC_MAX_CAMCLKS; i++) {
		struct cam_clk *camclk = &cp->camclk[i];
		struct clk_init_data init;
		const char *p_name;

		ret = FUNC8(dev->of_node,
					"clock-output-names", i, &init.name);
		if (ret < 0)
			break;

		p_name = FUNC2(fmd->camclk[i].clock);

		/* It's safe since clk_register() will duplicate the string. */
		init.parent_names = &p_name;
		init.num_parents = 1;
		init.ops = &cam_clk_ops;
		init.flags = CLK_SET_RATE_PARENT;
		camclk->hw.init = &init;
		camclk->fmd = fmd;

		cp->clks[i] = FUNC3(NULL, &camclk->hw);
		if (FUNC0(cp->clks[i])) {
			FUNC4(dev, "failed to register clock: %s (%ld)\n",
					init.name, FUNC1(cp->clks[i]));
			ret = FUNC1(cp->clks[i]);
			goto err;
		}
		cp->num_clocks++;
	}

	if (cp->num_clocks == 0) {
		FUNC5(dev, "clk provider not registered\n");
		return 0;
	}

	cp->clk_data.clks = cp->clks;
	cp->clk_data.clk_num = cp->num_clocks;
	cp->of_node = dev->of_node;
	ret = FUNC7(dev->of_node, of_clk_src_onecell_get,
				  &cp->clk_data);
	if (ret == 0)
		return 0;
err:
	FUNC6(fmd);
	return ret;
}