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
typedef  int u32 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int /*<<< orphan*/  dev; TYPE_1__ stats; } ;
struct moxart_mac_priv_t {unsigned int tx_head; int* tx_mapping; unsigned int* tx_len; int /*<<< orphan*/  txlock; scalar_t__ base; int /*<<< orphan*/  tx_buf_size; struct sk_buff** tx_skb; void* tx_desc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int ETH_ZLEN ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ REG_TX_POLL_DEMAND ; 
 unsigned int TX_BUF_SIZE ; 
 int TX_DESC0_DMA_OWN ; 
 unsigned int TX_DESC1_BUF_SIZE_MASK ; 
 int TX_DESC1_END ; 
 unsigned int TX_DESC1_FTS ; 
 unsigned int TX_DESC1_LTS ; 
 int TX_DESC2_ADDRESS_PHYS ; 
 int TX_DESC2_ADDRESS_VIRT ; 
 unsigned int TX_DESC_NUM_MASK ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int TX_REG_DESC_SIZE ; 
 int TX_REG_OFFSET_DESC0 ; 
 int TX_REG_OFFSET_DESC1 ; 
 int TX_REG_OFFSET_DESC2 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct moxart_mac_priv_t* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC10(ndev);
	void *desc;
	unsigned int len;
	unsigned int tx_head;
	u32 txdes1;
	int ret = NETDEV_TX_BUSY;

	FUNC14(&priv->txlock);

	tx_head = priv->tx_head;
	desc = priv->tx_desc_base + (TX_REG_DESC_SIZE * tx_head);

	if (FUNC7(ndev) == 1)
		FUNC11(ndev);

	if (FUNC5(desc + TX_REG_OFFSET_DESC0) & TX_DESC0_DMA_OWN) {
		FUNC8("no TX space for packet\n");
		ndev->stats.tx_dropped++;
		goto out_unlock;
	}
	FUNC13(); /* ensure data is only read that had TX_DESC0_DMA_OWN cleared */

	len = skb->len > TX_BUF_SIZE ? TX_BUF_SIZE : skb->len;

	priv->tx_mapping[tx_head] = FUNC1(&ndev->dev, skb->data,
						   len, DMA_TO_DEVICE);
	if (FUNC2(&ndev->dev, priv->tx_mapping[tx_head])) {
		FUNC9(ndev, "DMA mapping error\n");
		goto out_unlock;
	}

	priv->tx_len[tx_head] = len;
	priv->tx_skb[tx_head] = skb;

	FUNC6(priv->tx_mapping[tx_head],
	       desc + TX_REG_OFFSET_DESC2 + TX_DESC2_ADDRESS_PHYS);
	FUNC6((uintptr_t)skb->data,
	       desc + TX_REG_OFFSET_DESC2 + TX_DESC2_ADDRESS_VIRT);

	if (skb->len < ETH_ZLEN) {
		FUNC4(&skb->data[skb->len],
		       0, ETH_ZLEN - skb->len);
		len = ETH_ZLEN;
	}

	FUNC3(&ndev->dev, priv->tx_mapping[tx_head],
				   priv->tx_buf_size, DMA_TO_DEVICE);

	txdes1 = TX_DESC1_LTS | TX_DESC1_FTS | (len & TX_DESC1_BUF_SIZE_MASK);
	if (tx_head == TX_DESC_NUM_MASK)
		txdes1 |= TX_DESC1_END;
	FUNC6(txdes1, desc + TX_REG_OFFSET_DESC1);
	FUNC16(); /* flush descriptor before transferring ownership */
	FUNC6(TX_DESC0_DMA_OWN, desc + TX_REG_OFFSET_DESC0);

	/* start to send packet */
	FUNC17(0xffffffff, priv->base + REG_TX_POLL_DEMAND);

	priv->tx_head = FUNC0(tx_head);

	FUNC12(ndev);
	ret = NETDEV_TX_OK;
out_unlock:
	FUNC15(&priv->txlock);

	return ret;
}