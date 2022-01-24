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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct cc770_priv {struct sk_buff* tx_skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC770_OBJ_TX ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TXRQST_SET ; 
 int TXRQST_UNC ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int FUNC1 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int) ; 
 TYPE_1__* msgobj ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct cc770_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	struct cc770_priv *priv = FUNC4(dev);
	unsigned int mo = FUNC6(CC770_OBJ_TX);

	if (FUNC0(dev, skb))
		return NETDEV_TX_OK;

	FUNC5(dev);

	if ((FUNC1(priv,
			    msgobj[mo].ctrl1) & TXRQST_UNC) == TXRQST_SET) {
		FUNC3(dev, "TX register is still occupied!\n");
		return NETDEV_TX_BUSY;
	}

	priv->tx_skb = skb;
	FUNC2(dev, mo);

	return NETDEV_TX_OK;
}