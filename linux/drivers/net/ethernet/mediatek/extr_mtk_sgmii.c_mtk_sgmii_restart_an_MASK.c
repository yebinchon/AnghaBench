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
struct mtk_sgmii {int /*<<< orphan*/ * regmap; } ;
struct mtk_eth {TYPE_1__* soc; struct mtk_sgmii* sgmii; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_SHARED_SGMII ; 
 unsigned int SGMII_AN_RESTART ; 
 int /*<<< orphan*/  SGMSYS_PCS_CONTROL_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(struct mtk_eth *eth, int mac_id)
{
	struct mtk_sgmii *ss = eth->sgmii;
	unsigned int val, sid;

	/* Decide how GMAC and SGMIISYS be mapped */
	sid = (FUNC0(eth->soc->caps, MTK_SHARED_SGMII)) ?
	       0 : mac_id;

	if (!ss->regmap[sid])
		return;

	FUNC1(ss->regmap[sid], SGMSYS_PCS_CONTROL_1, &val);
	val |= SGMII_AN_RESTART;
	FUNC2(ss->regmap[sid], SGMSYS_PCS_CONTROL_1, val);
}