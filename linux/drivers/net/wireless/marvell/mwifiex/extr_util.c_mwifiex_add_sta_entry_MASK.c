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
struct mwifiex_sta_node {int /*<<< orphan*/  list; int /*<<< orphan*/  mac_addr; } ;
struct mwifiex_private {int /*<<< orphan*/  sta_list_spinlock; int /*<<< orphan*/  sta_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct mwifiex_sta_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct mwifiex_sta_node* FUNC3 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mwifiex_sta_node *
FUNC6(struct mwifiex_private *priv, const u8 *mac)
{
	struct mwifiex_sta_node *node;

	if (!mac)
		return NULL;

	FUNC4(&priv->sta_list_spinlock);
	node = FUNC3(priv, mac);
	if (node)
		goto done;

	node = FUNC0(sizeof(*node), GFP_ATOMIC);
	if (!node)
		goto done;

	FUNC2(node->mac_addr, mac, ETH_ALEN);
	FUNC1(&node->list, &priv->sta_list);

done:
	FUNC5(&priv->sta_list_spinlock);
	return node;
}