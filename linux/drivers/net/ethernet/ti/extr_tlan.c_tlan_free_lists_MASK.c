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
struct tlan_priv {int /*<<< orphan*/  pci_dev; struct tlan_list* rx_list; struct tlan_list* tx_list; } ;
struct tlan_list {TYPE_1__* buffer; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ address; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TLAN_MAX_FRAME_SIZE ; 
 scalar_t__ TLAN_MIN_FRAME_SIZE ; 
 int TLAN_NUM_RX_LISTS ; 
 int TLAN_NUM_TX_LISTS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct tlan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct tlan_list*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct tlan_priv *priv = FUNC2(dev);
	int		i;
	struct tlan_list	*list;
	struct sk_buff	*skb;

	for (i = 0; i < TLAN_NUM_TX_LISTS; i++) {
		list = priv->tx_list + i;
		skb = FUNC4(list);
		if (skb) {
			FUNC3(
				priv->pci_dev,
				list->buffer[0].address,
				FUNC1(skb->len,
				    (unsigned int)TLAN_MIN_FRAME_SIZE),
				PCI_DMA_TODEVICE);
			FUNC0(skb);
			list->buffer[8].address = 0;
			list->buffer[9].address = 0;
		}
	}

	for (i = 0; i < TLAN_NUM_RX_LISTS; i++) {
		list = priv->rx_list + i;
		skb = FUNC4(list);
		if (skb) {
			FUNC3(priv->pci_dev,
					 list->buffer[0].address,
					 TLAN_MAX_FRAME_SIZE,
					 PCI_DMA_FROMDEVICE);
			FUNC0(skb);
			list->buffer[8].address = 0;
			list->buffer[9].address = 0;
		}
	}
}