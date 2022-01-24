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
typedef  scalar_t__ u32 ;
struct cfp_rule {int /*<<< orphan*/  next; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique; } ;
struct bcm_sf2_priv {TYPE_1__ cfp; } ;

/* Variables and functions */
 scalar_t__ CFP_NUM_RULES ; 
 int EINVAL ; 
 struct cfp_rule* FUNC0 (struct bcm_sf2_priv*,int,scalar_t__) ; 
 int FUNC1 (struct bcm_sf2_priv*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cfp_rule*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bcm_sf2_priv *priv, int port, u32 loc)
{
	struct cfp_rule *rule;
	int ret;

	if (loc >= CFP_NUM_RULES)
		return -EINVAL;

	/* Refuse deleting unused rules, and those that are not unique since
	 * that could leave IPv6 rules with one of the chained rule in the
	 * table.
	 */
	if (!FUNC4(loc, priv->cfp.unique) || loc == 0)
		return -EINVAL;

	rule = FUNC0(priv, port, loc);
	if (!rule)
		return -EINVAL;

	ret = FUNC1(priv, port, loc);

	FUNC3(&rule->next);
	FUNC2(rule);

	return ret;
}