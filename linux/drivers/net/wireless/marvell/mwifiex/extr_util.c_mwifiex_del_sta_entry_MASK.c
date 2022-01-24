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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_sta_node {int /*<<< orphan*/  list; } ;
struct mwifiex_private {int /*<<< orphan*/  sta_list_spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwifiex_sta_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mwifiex_sta_node* FUNC2 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mwifiex_private *priv, const u8 *mac)
{
	struct mwifiex_sta_node *node;

	FUNC3(&priv->sta_list_spinlock);

	node = FUNC2(priv, mac);
	if (node) {
		FUNC1(&node->list);
		FUNC0(node);
	}

	FUNC4(&priv->sta_list_spinlock);
	return;
}