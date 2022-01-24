#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mtk_sgmii {int /*<<< orphan*/ * regmap; int /*<<< orphan*/  ana_rgc3; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MTK_MAX_DEVS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

int FUNC4(struct mtk_sgmii *ss, struct device_node *r, u32 ana_rgc3)
{
	struct device_node *np;
	int i;

	ss->ana_rgc3 = ana_rgc3;

	for (i = 0; i < MTK_MAX_DEVS; i++) {
		np = FUNC2(r, "mediatek,sgmiisys", i);
		if (!np)
			break;

		ss->regmap[i] = FUNC3(np);
		if (FUNC0(ss->regmap[i]))
			return FUNC1(ss->regmap[i]);
	}

	return 0;
}