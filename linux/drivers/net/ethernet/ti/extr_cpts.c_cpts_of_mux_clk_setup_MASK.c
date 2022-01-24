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
struct device_node {int name; } ;
struct cpts {int /*<<< orphan*/  dev; TYPE_1__* reg; } ;
struct clk_hw {int name; } ;
struct TYPE_2__ {int /*<<< orphan*/  rftclk_sel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device_node*) ; 
 int FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int,char const**,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ clk_hw_unregister_mux ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,void (*) (void*),struct device_node*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,struct device_node*) ; 
 scalar_t__ of_clk_del_provider ; 
 unsigned int FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char const**,unsigned int) ; 
 struct device_node* FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct cpts *cpts, struct device_node *node)
{
	struct device_node *refclk_np;
	const char **parent_names;
	unsigned int num_parents;
	struct clk_hw *clk_hw;
	int ret = -EINVAL;
	u32 *mux_table;

	refclk_np = FUNC9(node, "cpts-refclk-mux");
	if (!refclk_np)
		/* refclk selection supported not for all SoCs */
		return 0;

	num_parents = FUNC7(refclk_np);
	if (num_parents < 1) {
		FUNC3(cpts->dev, "mux-clock %s must have parents\n",
			refclk_np->name);
		goto mux_fail;
	}

	parent_names = FUNC5(cpts->dev, (sizeof(char *) * num_parents),
				    GFP_KERNEL);

	mux_table = FUNC5(cpts->dev, sizeof(*mux_table) * num_parents,
				 GFP_KERNEL);
	if (!mux_table || !parent_names) {
		ret = -ENOMEM;
		goto mux_fail;
	}

	FUNC8(refclk_np, parent_names, num_parents);

	ret = FUNC11(refclk_np, "ti,mux-tbl",
						  mux_table,
						  num_parents, num_parents);
	if (ret < 0)
		goto mux_fail;

	clk_hw = FUNC2(cpts->dev, refclk_np->name,
					   parent_names, num_parents,
					   0,
					   &cpts->reg->rftclk_sel, 0, 0x1F,
					   0, mux_table, NULL);
	if (FUNC0(clk_hw)) {
		ret = FUNC1(clk_hw);
		goto mux_fail;
	}

	ret = FUNC4(cpts->dev,
				       (void(*)(void *))clk_hw_unregister_mux,
				       clk_hw);
	if (ret) {
		FUNC3(cpts->dev, "add clkmux unreg action %d", ret);
		goto mux_fail;
	}

	ret = FUNC6(refclk_np, of_clk_hw_simple_get, clk_hw);
	if (ret)
		goto mux_fail;

	ret = FUNC4(cpts->dev,
				       (void(*)(void *))of_clk_del_provider,
				       refclk_np);
	if (ret) {
		FUNC3(cpts->dev, "add clkmux provider unreg action %d", ret);
		goto mux_fail;
	}

	return ret;

mux_fail:
	FUNC10(refclk_np);
	return ret;
}