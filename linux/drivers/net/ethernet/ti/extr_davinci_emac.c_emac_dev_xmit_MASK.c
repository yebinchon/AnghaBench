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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct device {int dummy; } ;
struct net_device {TYPE_1__ stats; struct device dev; } ;
struct emac_priv {int /*<<< orphan*/  txchan; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_DEF_MIN_ETHPKTSIZE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 () ; 
 struct emac_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *ndev)
{
	struct device *emac_dev = &ndev->dev;
	int ret_code;
	struct emac_priv *priv = FUNC4(ndev);

	/* If no link, return */
	if (FUNC9(!priv->link)) {
		if (FUNC5(priv) && FUNC3())
			FUNC2(emac_dev, "DaVinci EMAC: No link to transmit");
		goto fail_tx;
	}

	ret_code = FUNC7(skb, EMAC_DEF_MIN_ETHPKTSIZE);
	if (FUNC9(ret_code < 0)) {
		if (FUNC5(priv) && FUNC3())
			FUNC2(emac_dev, "DaVinci EMAC: packet pad failed");
		goto fail_tx;
	}

	FUNC8(skb);

	ret_code = FUNC0(priv->txchan, skb, skb->data, skb->len,
				     0);
	if (FUNC9(ret_code != 0)) {
		if (FUNC5(priv) && FUNC3())
			FUNC2(emac_dev, "DaVinci EMAC: desc submit failed");
		goto fail_tx;
	}

	/* If there is no more tx desc left free then we need to
	 * tell the kernel to stop sending us tx frames.
	 */
	if (FUNC9(!FUNC1(priv->txchan)))
		FUNC6(ndev);

	return NETDEV_TX_OK;

fail_tx:
	ndev->stats.tx_dropped++;
	FUNC6(ndev);
	return NETDEV_TX_BUSY;
}