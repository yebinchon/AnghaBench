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
typedef  scalar_t__ u32 ;
struct ipw2100_ordinals {scalar_t__ table1_addr; } ;
struct ipw2100_priv {int /*<<< orphan*/  net_dev; struct ipw2100_ordinals ordinals; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IPW_ORD_TAB_1_ENTRY_SIZE ; 
 scalar_t__ FUNC1 (struct ipw2100_ordinals*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ipw2100_ordinals*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ipw2100_priv *priv, u32 ord, u32 * val,
			       u32 * len)
{
	struct ipw2100_ordinals *ordinals = &priv->ordinals;
	u32 addr;

	if (FUNC1(ordinals, ord)) {
		if (*len != IPW_ORD_TAB_1_ENTRY_SIZE) {
			*len = IPW_ORD_TAB_1_ENTRY_SIZE;
			FUNC0("wrong size\n");
			return -EINVAL;
		}

		FUNC3(priv->net_dev,
			       ordinals->table1_addr + (ord << 2), &addr);

		FUNC4(priv->net_dev, addr, *val);

		*len = IPW_ORD_TAB_1_ENTRY_SIZE;

		return 0;
	}

	FUNC0("wrong table\n");
	if (FUNC2(ordinals, ord))
		return -EINVAL;

	return -EINVAL;
}