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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum mtk_mdp_comp_type { ____Placeholder_mtk_mdp_comp_type } mtk_mdp_comp_type ;
struct TYPE_3__ {int type; int alias_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/ * mtk_mdp_comp_stem ; 
 TYPE_1__* mtk_mdp_matches ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 

int FUNC3(struct device *dev, struct device_node *node,
			enum mtk_mdp_comp_type comp_type)
{
	int id = FUNC2(node, mtk_mdp_comp_stem[comp_type]);
	int i;

	for (i = 0; i < FUNC0(mtk_mdp_matches); i++) {
		if (comp_type == mtk_mdp_matches[i].type &&
		    id == mtk_mdp_matches[i].alias_id)
			return i;
	}

	FUNC1(dev, "Failed to get id. type: %d, id: %d\n", comp_type, id);

	return -EINVAL;
}