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
struct napi_struct {int dummy; } ;
struct xgbe_prv_data {scalar_t__ channel_irq_mode; scalar_t__ per_channel_irq; struct napi_struct napi; } ;
struct xgbe_channel {scalar_t__ tx_timer_active; int /*<<< orphan*/  dma_irq; struct napi_struct napi; struct xgbe_prv_data* pdata; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 struct xgbe_channel* channel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xgbe_channel* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct napi_struct*) ; 
 int /*<<< orphan*/  tx_timer ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,struct xgbe_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct xgbe_channel *channel = FUNC3(channel, t, tx_timer);
	struct xgbe_prv_data *pdata = channel->pdata;
	struct napi_struct *napi;

	FUNC0("-->xgbe_tx_timer\n");

	napi = (pdata->per_channel_irq) ? &channel->napi : &pdata->napi;

	if (FUNC4(napi)) {
		/* Disable Tx and Rx interrupts */
		if (pdata->per_channel_irq)
			if (pdata->channel_irq_mode)
				FUNC5(pdata, channel);
			else
				FUNC2(channel->dma_irq);
		else
			FUNC6(pdata);

		/* Turn on polling */
		FUNC1(napi);
	}

	channel->tx_timer_active = 0;

	FUNC0("<--xgbe_tx_timer\n");
}