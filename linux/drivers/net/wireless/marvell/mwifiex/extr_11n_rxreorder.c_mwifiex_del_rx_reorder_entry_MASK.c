#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int timer_is_set; int /*<<< orphan*/  timer; } ;
struct mwifiex_rx_reorder_tbl {int start_win; int win_size; struct mwifiex_rx_reorder_tbl* rx_reorder_ptr; int /*<<< orphan*/  list; TYPE_1__ timer_context; } ;
struct mwifiex_private {TYPE_2__* adapter; int /*<<< orphan*/  rx_reorder_tbl_lock; } ;
struct TYPE_4__ {int rx_locked; int /*<<< orphan*/  rx_proc_lock; int /*<<< orphan*/  rx_workqueue; scalar_t__ rx_processing; } ;

/* Variables and functions */
 int MAX_TID_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_rx_reorder_tbl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,struct mwifiex_rx_reorder_tbl*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct mwifiex_private *priv,
			     struct mwifiex_rx_reorder_tbl *tbl)
{
	int start_win;

	if (!tbl)
		return;

	FUNC5(&priv->adapter->rx_proc_lock);
	priv->adapter->rx_locked = true;
	if (priv->adapter->rx_processing) {
		FUNC6(&priv->adapter->rx_proc_lock);
		FUNC1(priv->adapter->rx_workqueue);
	} else {
		FUNC6(&priv->adapter->rx_proc_lock);
	}

	start_win = (tbl->start_win + tbl->win_size) & (MAX_TID_VALUE - 1);
	FUNC4(priv, tbl, start_win);

	FUNC0(&tbl->timer_context.timer);
	tbl->timer_context.timer_is_set = false;

	FUNC5(&priv->rx_reorder_tbl_lock);
	FUNC3(&tbl->list);
	FUNC6(&priv->rx_reorder_tbl_lock);

	FUNC2(tbl->rx_reorder_ptr);
	FUNC2(tbl);

	FUNC5(&priv->adapter->rx_proc_lock);
	priv->adapter->rx_locked = false;
	FUNC6(&priv->adapter->rx_proc_lock);

}