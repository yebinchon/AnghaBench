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
typedef  size_t u32 ;
struct stmmac_priv {TYPE_1__* plat; int /*<<< orphan*/  ioaddr; struct stmmac_channel* channel; int /*<<< orphan*/  xstats; } ;
struct stmmac_channel {int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  rx_napi; } ;
struct TYPE_2__ {size_t rx_queues_to_use; size_t tx_queues_to_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int handle_rx ; 
 int handle_tx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct stmmac_priv *priv, u32 chan)
{
	int status = FUNC4(priv, priv->ioaddr,
						 &priv->xstats, chan);
	struct stmmac_channel *ch = &priv->channel[chan];

	if ((status & handle_rx) && (chan < priv->plat->rx_queues_to_use)) {
		if (FUNC2(&ch->rx_napi)) {
			FUNC3(priv, priv->ioaddr, chan);
			FUNC0(&ch->rx_napi);
			status |= handle_tx;
		}
	}

	if ((status & handle_tx) && (chan < priv->plat->tx_queues_to_use))
		FUNC1(&ch->tx_napi);

	return status;
}