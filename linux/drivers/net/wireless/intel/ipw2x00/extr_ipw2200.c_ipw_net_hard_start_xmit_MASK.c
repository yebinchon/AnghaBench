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
struct net_device {int dummy; } ;
struct libipw_txb {int /*<<< orphan*/  payload_size; } ;
struct ipw_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  prom_net_dev; } ;
typedef  scalar_t__ netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,struct libipw_txb*) ; 
 scalar_t__ FUNC3 (struct ipw_priv*,struct libipw_txb*,int) ; 
 struct ipw_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ rtap_iface ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct libipw_txb *txb,
					   struct net_device *dev, int pri)
{
	struct ipw_priv *priv = FUNC4(dev);
	unsigned long flags;
	netdev_tx_t ret;

	FUNC0("dev->xmit(%d bytes)\n", txb->payload_size);
	FUNC6(&priv->lock, flags);

#ifdef CONFIG_IPW2200_PROMISCUOUS
	if (rtap_iface && netif_running(priv->prom_net_dev))
		ipw_handle_promiscuous_tx(priv, txb);
#endif

	ret = FUNC3(priv, txb, pri);
	if (ret == NETDEV_TX_OK)
		FUNC1(priv);
	FUNC7(&priv->lock, flags);

	return ret;
}