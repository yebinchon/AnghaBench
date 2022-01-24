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
typedef  scalar_t__ u16 ;
struct tlan_priv {int tx_tail; int tx_in_progress; int /*<<< orphan*/  lock; struct tlan_list* tx_list; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_busy_count; int /*<<< orphan*/  tx_head; void* tx_list_dma; int /*<<< orphan*/  phy_online; } ;
struct tlan_list {scalar_t__ c_stat; void* forward; TYPE_1__* buffer; scalar_t__ frame_size; } ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct net_device {int name; scalar_t__ base_addr; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {int count; scalar_t__ address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ TLAN_CH_PARM ; 
 scalar_t__ TLAN_CSTAT_READY ; 
 scalar_t__ TLAN_CSTAT_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  TLAN_DEBUG_TX ; 
 void* TLAN_HC_GO ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int TLAN_LAST_BUFFER ; 
 scalar_t__ TLAN_MIN_FRAME_SIZE ; 
 int TLAN_NUM_TX_LISTS ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 struct tlan_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct tlan_list*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct tlan_priv *priv = FUNC4(dev);
	dma_addr_t	tail_list_phys;
	struct tlan_list	*tail_list;
	unsigned long	flags;
	unsigned int    txlen;

	if (!priv->phy_online) {
		FUNC1(TLAN_DEBUG_TX, "TRANSMIT:  %s PHY is not ready\n",
			 dev->name);
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC8(skb, TLAN_MIN_FRAME_SIZE))
		return NETDEV_TX_OK;
	txlen = FUNC3(skb->len, (unsigned int)TLAN_MIN_FRAME_SIZE);

	tail_list = priv->tx_list + priv->tx_tail;
	tail_list_phys =
		priv->tx_list_dma + sizeof(struct tlan_list)*priv->tx_tail;

	if (tail_list->c_stat != TLAN_CSTAT_UNUSED) {
		FUNC1(TLAN_DEBUG_TX,
			 "TRANSMIT:  %s is busy (Head=%d Tail=%d)\n",
			 dev->name, priv->tx_head, priv->tx_tail);
		FUNC5(dev);
		priv->tx_busy_count++;
		return NETDEV_TX_BUSY;
	}

	tail_list->forward = 0;

	tail_list->buffer[0].address = FUNC7(priv->pci_dev,
						      skb->data, txlen,
						      PCI_DMA_TODEVICE);
	FUNC11(tail_list, skb);

	tail_list->frame_size = (u16) txlen;
	tail_list->buffer[0].count = TLAN_LAST_BUFFER | (u32) txlen;
	tail_list->buffer[1].count = 0;
	tail_list->buffer[1].address = 0;

	FUNC9(&priv->lock, flags);
	tail_list->c_stat = TLAN_CSTAT_READY;
	if (!priv->tx_in_progress) {
		priv->tx_in_progress = 1;
		FUNC1(TLAN_DEBUG_TX,
			 "TRANSMIT:  Starting TX on buffer %d\n",
			 priv->tx_tail);
		FUNC6(tail_list_phys, dev->base_addr + TLAN_CH_PARM);
		FUNC6(TLAN_HC_GO, dev->base_addr + TLAN_HOST_CMD);
	} else {
		FUNC1(TLAN_DEBUG_TX,
			 "TRANSMIT:  Adding buffer %d to TX channel\n",
			 priv->tx_tail);
		if (priv->tx_tail == 0) {
			(priv->tx_list + (TLAN_NUM_TX_LISTS - 1))->forward
				= tail_list_phys;
		} else {
			(priv->tx_list + (priv->tx_tail - 1))->forward
				= tail_list_phys;
		}
	}
	FUNC10(&priv->lock, flags);

	FUNC0(priv->tx_tail, TLAN_NUM_TX_LISTS);

	return NETDEV_TX_OK;

}