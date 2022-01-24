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
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  len; } ;
struct tx_desc {TYPE_1__ header; int /*<<< orphan*/  data; } ;
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct ec_bhf_priv {size_t tx_dnext; int tx_dcount; unsigned int stat_tx_bytes; struct tx_desc* tx_descs; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TX_HDR_PORT_0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ec_bhf_priv*,struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct ec_bhf_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
				     struct net_device *net_dev)
{
	struct ec_bhf_priv *priv = FUNC5(net_dev);
	struct tx_desc *desc;
	unsigned len;

	desc = &priv->tx_descs[priv->tx_dnext];

	FUNC7(skb, desc->data);
	len = skb->len;

	FUNC4(&desc->header, 0, sizeof(desc->header));
	desc->header.len = FUNC0(len);
	desc->header.port = TX_HDR_PORT_0;

	FUNC3(priv, desc);

	priv->tx_dnext = (priv->tx_dnext + 1) % priv->tx_dcount;

	if (!FUNC2(&priv->tx_descs[priv->tx_dnext])) {
		/* Make sure that updates to tx_dnext are perceived
		 * by timer routine.
		 */
		FUNC8();

		FUNC6(net_dev);
	}

	priv->stat_tx_bytes += len;

	FUNC1(skb);

	return NETDEV_TX_OK;
}