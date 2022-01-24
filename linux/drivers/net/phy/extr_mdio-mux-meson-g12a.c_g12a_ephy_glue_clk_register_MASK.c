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
struct g12a_mdio_mux {struct clk* pll; scalar_t__ regs; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct g12a_ephy_pll {TYPE_1__ hw; scalar_t__ base; } ;
struct device {int dummy; } ;
struct clk_mux {int shift; int mask; TYPE_1__ hw; scalar_t__ reg; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  in_name ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ ETH_PLL_CTL0 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int PLL_CTL0_SEL ; 
 int PLL_MUX_NUM_PARENT ; 
 int FUNC1 (struct clk*) ; 
 char* FUNC2 (struct clk*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  clk_mux_ro_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct g12a_mdio_mux* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct clk* FUNC7 (struct device*,char*) ; 
 struct clk* FUNC8 (struct device*,TYPE_1__*) ; 
 void* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g12a_ephy_pll_ops ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct g12a_mdio_mux *priv = FUNC5(dev);
	const char *parent_names[PLL_MUX_NUM_PARENT];
	struct clk_init_data init;
	struct g12a_ephy_pll *pll;
	struct clk_mux *mux;
	struct clk *clk;
	char *name;
	int i;

	/* get the mux parents */
	for (i = 0; i < PLL_MUX_NUM_PARENT; i++) {
		char in_name[8];

		FUNC12(in_name, sizeof(in_name), "clkin%d", i);
		clk = FUNC7(dev, in_name);
		if (FUNC0(clk)) {
			if (FUNC1(clk) != -EPROBE_DEFER)
				FUNC4(dev, "Missing clock %s\n", in_name);
			return FUNC1(clk);
		}

		parent_names[i] = FUNC2(clk);
	}

	/* create the input mux */
	mux = FUNC9(dev, sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return -ENOMEM;

	name = FUNC10(GFP_KERNEL, "%s#mux", FUNC6(dev));
	if (!name)
		return -ENOMEM;

	init.name = name;
	init.ops = &clk_mux_ro_ops;
	init.flags = 0;
	init.parent_names = parent_names;
	init.num_parents = PLL_MUX_NUM_PARENT;

	mux->reg = priv->regs + ETH_PLL_CTL0;
	mux->shift = FUNC3(PLL_CTL0_SEL);
	mux->mask = PLL_CTL0_SEL >> mux->shift;
	mux->hw.init = &init;

	clk = FUNC8(dev, &mux->hw);
	FUNC11(name);
	if (FUNC0(clk)) {
		FUNC4(dev, "failed to register input mux\n");
		return FUNC1(clk);
	}

	/* create the pll */
	pll = FUNC9(dev, sizeof(*pll), GFP_KERNEL);
	if (!pll)
		return -ENOMEM;

	name = FUNC10(GFP_KERNEL, "%s#pll", FUNC6(dev));
	if (!name)
		return -ENOMEM;

	init.name = name;
	init.ops = &g12a_ephy_pll_ops;
	init.flags = 0;
	parent_names[0] = FUNC2(clk);
	init.parent_names = parent_names;
	init.num_parents = 1;

	pll->base = priv->regs;
	pll->hw.init = &init;

	clk = FUNC8(dev, &pll->hw);
	FUNC11(name);
	if (FUNC0(clk)) {
		FUNC4(dev, "failed to register input mux\n");
		return FUNC1(clk);
	}

	priv->pll = clk;

	return 0;
}