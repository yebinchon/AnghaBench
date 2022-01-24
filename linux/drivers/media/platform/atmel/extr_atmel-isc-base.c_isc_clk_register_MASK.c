#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct isc_device {TYPE_1__* dev; struct isc_clk* isc_clks; struct regmap* regmap; } ;
struct TYPE_5__ {struct clk_init_data* init; } ;
struct isc_clk {unsigned int id; int /*<<< orphan*/  clk; TYPE_3__ hw; int /*<<< orphan*/  lock; TYPE_1__* dev; struct regmap* regmap; } ;
struct device_node {char* name; } ;
struct clk_init_data {char const** parent_names; int num_parents; char const* name; int flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int CLK_SET_PARENT_GATE ; 
 int CLK_SET_RATE_GATE ; 
 int EINVAL ; 
 unsigned int ISC_ISPCK ; 
 unsigned int ISC_MCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  isc_clk_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char const**,int) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct isc_device *isc, unsigned int id)
{
	struct regmap *regmap = isc->regmap;
	struct device_node *np = isc->dev->of_node;
	struct isc_clk *isc_clk;
	struct clk_init_data init;
	const char *clk_name = np->name;
	const char *parent_names[3];
	int num_parents;

	num_parents = FUNC5(np);
	if (num_parents < 1 || num_parents > 3)
		return -EINVAL;

	if (num_parents > 2 && id == ISC_ISPCK)
		num_parents = 2;

	FUNC6(np, parent_names, num_parents);

	if (id == ISC_MCK)
		FUNC7(np, "clock-output-names", &clk_name);
	else
		clk_name = "isc-ispck";

	init.parent_names	= parent_names;
	init.num_parents	= num_parents;
	init.name		= clk_name;
	init.ops		= &isc_clk_ops;
	init.flags		= CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;

	isc_clk = &isc->isc_clks[id];
	isc_clk->hw.init	= &init;
	isc_clk->regmap		= regmap;
	isc_clk->id		= id;
	isc_clk->dev		= isc->dev;
	FUNC8(&isc_clk->lock);

	isc_clk->clk = FUNC2(isc->dev, &isc_clk->hw);
	if (FUNC0(isc_clk->clk)) {
		FUNC3(isc->dev, "%s: clock register fail\n", clk_name);
		return FUNC1(isc_clk->clk);
	} else if (id == ISC_MCK)
		FUNC4(np, of_clk_src_simple_get, isc_clk->clk);

	return 0;
}