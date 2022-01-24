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
struct mwifiex_private {size_t bss_priority; struct mwifiex_adapter* adapter; } ;
struct mwifiex_bss_prio_tbl {int /*<<< orphan*/  bss_prio_lock; int /*<<< orphan*/  bss_prio_head; } ;
struct mwifiex_bss_prio_node {int /*<<< orphan*/  list; struct mwifiex_private* priv; } ;
struct mwifiex_adapter {struct mwifiex_bss_prio_tbl* bss_prio_tbl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mwifiex_bss_prio_node* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mwifiex_private *priv)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct mwifiex_bss_prio_node *bss_prio;
	struct mwifiex_bss_prio_tbl *tbl = adapter->bss_prio_tbl;

	bss_prio = FUNC1(sizeof(struct mwifiex_bss_prio_node), GFP_KERNEL);
	if (!bss_prio)
		return -ENOMEM;

	bss_prio->priv = priv;
	FUNC0(&bss_prio->list);

	FUNC3(&tbl[priv->bss_priority].bss_prio_lock);
	FUNC2(&bss_prio->list, &tbl[priv->bss_priority].bss_prio_head);
	FUNC4(&tbl[priv->bss_priority].bss_prio_lock);

	return 0;
}