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
struct tc_cls_u32_offload {int dummy; } ;
struct stmmac_priv {int /*<<< orphan*/  tc_entries_max; int /*<<< orphan*/  tc_entries; TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcsr; } ;

/* Variables and functions */
 int FUNC0 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stmmac_priv*,struct tc_cls_u32_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,struct tc_cls_u32_offload*) ; 

__attribute__((used)) static int FUNC3(struct stmmac_priv *priv,
			   struct tc_cls_u32_offload *cls)
{
	int ret;

	ret = FUNC1(priv, cls);
	if (ret)
		return ret;

	ret = FUNC0(priv, priv->hw->pcsr, priv->tc_entries,
			priv->tc_entries_max);
	if (ret)
		goto err_unfill;

	return 0;

err_unfill:
	FUNC2(priv, cls);
	return ret;
}