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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct hi3110_priv {scalar_t__ tx_len; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hi3110_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *net)
{
	struct hi3110_priv *priv = FUNC2(net);

	if (priv->tx_skb || priv->tx_len)
		net->stats.tx_errors++;
	FUNC1(priv->tx_skb);
	if (priv->tx_len)
		FUNC0(priv->net, 0);
	priv->tx_skb = NULL;
	priv->tx_len = 0;
}