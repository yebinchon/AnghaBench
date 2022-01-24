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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  dev; TYPE_1__ stats; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {unsigned int cur_tx; unsigned int num_tx; unsigned int dty_tx; int /*<<< orphan*/  lock; void** vma; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ ETHOC_BUFSIZ ; 
 scalar_t__ ETHOC_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (scalar_t__) ; 
 int TX_BD_LEN_MASK ; 
 int TX_BD_PAD ; 
 int TX_BD_READY ; 
 int TX_BD_STATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ethoc* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	struct ethoc *priv = FUNC6(dev);
	struct ethoc_bd bd;
	unsigned int entry;
	void *dest;

	if (FUNC8(skb, ETHOC_ZLEN)) {
		dev->stats.tx_errors++;
		goto out_no_free;
	}

	if (FUNC12(skb->len > ETHOC_BUFSIZ)) {
		dev->stats.tx_errors++;
		goto out;
	}

	entry = priv->cur_tx % priv->num_tx;
	FUNC10(&priv->lock);
	priv->cur_tx++;

	FUNC3(priv, entry, &bd);
	if (FUNC12(skb->len < ETHOC_ZLEN))
		bd.stat |=  TX_BD_PAD;
	else
		bd.stat &= ~TX_BD_PAD;

	dest = priv->vma[entry];
	FUNC5(dest, skb->data, skb->len);

	bd.stat &= ~(TX_BD_STATS | TX_BD_LEN_MASK);
	bd.stat |= FUNC0(skb->len);
	FUNC4(priv, entry, &bd);

	bd.stat |= TX_BD_READY;
	FUNC4(priv, entry, &bd);

	if (priv->cur_tx == (priv->dty_tx + priv->num_tx)) {
		FUNC1(&dev->dev, "stopping queue\n");
		FUNC7(dev);
	}

	FUNC11(&priv->lock);
	FUNC9(skb);
out:
	FUNC2(skb);
out_no_free:
	return NETDEV_TX_OK;
}