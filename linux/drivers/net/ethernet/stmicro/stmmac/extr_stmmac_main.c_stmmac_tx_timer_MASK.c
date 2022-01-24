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
struct timer_list {int dummy; } ;
struct stmmac_tx_queue {size_t queue_index; int /*<<< orphan*/  txtimer; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {struct stmmac_channel* channel; } ;
struct stmmac_channel {int /*<<< orphan*/  tx_napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stmmac_tx_queue* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct stmmac_tx_queue* tx_q ; 
 int /*<<< orphan*/  txtimer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct stmmac_tx_queue *tx_q = FUNC2(tx_q, t, txtimer);
	struct stmmac_priv *priv = tx_q->priv_data;
	struct stmmac_channel *ch;

	ch = &priv->channel[tx_q->queue_index];

	/*
	 * If NAPI is already running we can miss some events. Let's rearm
	 * the timer and try again.
	 */
	if (FUNC3(FUNC5(&ch->tx_napi)))
		FUNC1(&ch->tx_napi);
	else
		FUNC4(&tx_q->txtimer, FUNC0(10));
}