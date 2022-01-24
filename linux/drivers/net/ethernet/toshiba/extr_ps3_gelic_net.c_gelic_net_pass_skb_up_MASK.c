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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct gelic_descr {struct sk_buff* skb; int /*<<< orphan*/  dmac_cmd_status; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  result_size; int /*<<< orphan*/  valid_size; int /*<<< orphan*/  buf_addr; int /*<<< orphan*/  data_error; int /*<<< orphan*/  data_status; } ;
struct gelic_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int GELIC_DESCR_DATA_ERROR_CHK_MASK ; 
 int GELIC_DESCR_DATA_STATUS_CHK_MASK ; 
 int /*<<< orphan*/  GELIC_NET_MAX_MTU ; 
 int NETIF_F_RXCSUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC9(struct gelic_descr *descr,
				  struct gelic_card *card,
				  struct net_device *netdev)

{
	struct sk_buff *skb = descr->skb;
	u32 data_status, data_error;

	data_status = FUNC0(descr->data_status);
	data_error = FUNC0(descr->data_error);
	/* unmap skb buffer */
	FUNC3(FUNC1(card), FUNC0(descr->buf_addr),
			 GELIC_NET_MAX_MTU,
			 DMA_FROM_DEVICE);

	FUNC8(skb, FUNC0(descr->valid_size)?
		FUNC0(descr->valid_size) :
		FUNC0(descr->result_size));
	if (!descr->valid_size)
		FUNC2(FUNC1(card), "buffer full %x %x %x\n",
			 FUNC0(descr->result_size),
			 FUNC0(descr->buf_size),
			 FUNC0(descr->dmac_cmd_status));

	descr->skb = NULL;
	/*
	 * the card put 2 bytes vlan tag in front
	 * of the ethernet frame
	 */
	FUNC7(skb, 2);
	skb->protocol = FUNC4(skb, netdev);

	/* checksum offload */
	if (netdev->features & NETIF_F_RXCSUM) {
		if ((data_status & GELIC_DESCR_DATA_STATUS_CHK_MASK) &&
		    (!(data_error & GELIC_DESCR_DATA_ERROR_CHK_MASK)))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			FUNC6(skb);
	} else
		FUNC6(skb);

	/* update netdevice statistics */
	netdev->stats.rx_packets++;
	netdev->stats.rx_bytes += skb->len;

	/* pass skb up to stack */
	FUNC5(skb);
}