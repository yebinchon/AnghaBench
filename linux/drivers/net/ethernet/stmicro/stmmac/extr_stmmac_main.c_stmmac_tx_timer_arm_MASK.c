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
typedef  size_t u32 ;
struct stmmac_tx_queue {int /*<<< orphan*/  txtimer; } ;
struct stmmac_priv {int /*<<< orphan*/  tx_coal_timer; struct stmmac_tx_queue* tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stmmac_priv *priv, u32 queue)
{
	struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

	FUNC1(&tx_q->txtimer, FUNC0(priv->tx_coal_timer));
}