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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtk_mdp_comp {int id; scalar_t__ type; int /*<<< orphan*/ * larb_dev; int /*<<< orphan*/ * clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev_node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum mtk_mdp_comp_id { ____Placeholder_mtk_mdp_comp_id } mtk_mdp_comp_id ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int MTK_MDP_COMP_ID_MAX ; 
 scalar_t__ MTK_MDP_RDMA ; 
 scalar_t__ MTK_MDP_WDMA ; 
 scalar_t__ MTK_MDP_WROT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct device_node*) ; 
 TYPE_1__* mtk_mdp_matches ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int) ; 
 struct platform_device* FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

int FUNC9(struct device *dev, struct device_node *node,
		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id)
{
	struct device_node *larb_node;
	struct platform_device *larb_pdev;
	int i;

	if (comp_id < 0 || comp_id >= MTK_MDP_COMP_ID_MAX) {
		FUNC1(dev, "Invalid comp_id %d\n", comp_id);
		return -EINVAL;
	}

	comp->dev_node = FUNC6(node);
	comp->id = comp_id;
	comp->type = mtk_mdp_matches[comp_id].type;
	comp->regs = FUNC5(node, 0);

	for (i = 0; i < FUNC0(comp->clk); i++) {
		comp->clk[i] = FUNC3(node, i);

		/* Only RDMA needs two clocks */
		if (comp->type != MTK_MDP_RDMA)
			break;
	}

	/* Only DMA capable components need the LARB property */
	comp->larb_dev = NULL;
	if (comp->type != MTK_MDP_RDMA &&
	    comp->type != MTK_MDP_WDMA &&
	    comp->type != MTK_MDP_WROT)
		return 0;

	larb_node = FUNC8(node, "mediatek,larb", 0);
	if (!larb_node) {
		FUNC1(dev,
			"Missing mediadek,larb phandle in %pOF node\n", node);
		return -EINVAL;
	}

	larb_pdev = FUNC4(larb_node);
	if (!larb_pdev) {
		FUNC2(dev, "Waiting for larb device %pOF\n", larb_node);
		FUNC7(larb_node);
		return -EPROBE_DEFER;
	}
	FUNC7(larb_node);

	comp->larb_dev = &larb_pdev->dev;

	return 0;
}