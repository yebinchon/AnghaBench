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
struct tx_desc {int byte_cnt; int cmd_sts; int /*<<< orphan*/  buf_ptr; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct pxa168_eth_private {int tx_ring_size; int tx_desc_count; TYPE_1__* pdev; struct sk_buff** tx_skb; struct tx_desc* p_tx_desc_area; } ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_OWNED_BY_DMA ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  SDMA_CMD ; 
 int SDMA_CMD_ERD ; 
 int SDMA_CMD_TXDH ; 
 int TX_EN_INT ; 
 int TX_FIRST_DESC ; 
 int TX_GEN_CRC ; 
 int TX_LAST_DESC ; 
 int TX_ZERO_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct pxa168_eth_private*) ; 
 struct pxa168_eth_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static netdev_tx_t
FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC3(dev);
	struct net_device_stats *stats = &dev->stats;
	struct tx_desc *desc;
	int tx_index;
	int length;

	tx_index = FUNC2(pep);
	desc = &pep->p_tx_desc_area[tx_index];
	length = skb->len;
	pep->tx_skb[tx_index] = skb;
	desc->byte_cnt = length;
	desc->buf_ptr = FUNC0(&pep->pdev->dev, skb->data, length,
					DMA_TO_DEVICE);

	FUNC6(skb);

	FUNC1();
	desc->cmd_sts = BUF_OWNED_BY_DMA | TX_GEN_CRC | TX_FIRST_DESC |
			TX_ZERO_PADDING | TX_LAST_DESC | TX_EN_INT;
	FUNC7();
	FUNC8(pep, SDMA_CMD, SDMA_CMD_TXDH | SDMA_CMD_ERD);

	stats->tx_bytes += length;
	stats->tx_packets++;
	FUNC5(dev);
	if (pep->tx_ring_size - pep->tx_desc_count <= 1) {
		/* We handled the current skb, but now we are out of space.*/
		FUNC4(dev);
	}

	return NETDEV_TX_OK;
}