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
struct uli526x_board_info {int cr6_data; struct rx_desc* rx_ready_ptr; int /*<<< orphan*/  pdev; int /*<<< orphan*/  interval_rx_cnt; scalar_t__ rx_avail_cnt; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct rx_desc {struct rx_desc* next_rx_desc; struct sk_buff* rx_skb_ptr; int /*<<< orphan*/  rdes2; int /*<<< orphan*/  rdes0; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int CR6_PM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  RX_ALLOC_SIZE ; 
 int RX_COPY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct uli526x_board_info*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev, struct uli526x_board_info * db)
{
	struct rx_desc *rxptr;
	struct sk_buff *skb;
	int rxlen;
	u32 rdes0;

	rxptr = db->rx_ready_ptr;

	while(db->rx_avail_cnt) {
		rdes0 = FUNC2(rxptr->rdes0);
		if (rdes0 & 0x80000000)	/* packet owner check */
		{
			break;
		}

		db->rx_avail_cnt--;
		db->interval_rx_cnt++;

		FUNC5(db->pdev, FUNC2(rxptr->rdes2), RX_ALLOC_SIZE, PCI_DMA_FROMDEVICE);
		if ( (rdes0 & 0x300) != 0x300) {
			/* A packet without First/Last flag */
			/* reuse this SKB */
			FUNC0(0, "Reuse SK buffer, rdes0", rdes0);
			FUNC10(db, rxptr->rx_skb_ptr);
		} else {
			/* A packet with First/Last flag */
			rxlen = ( (rdes0 >> 16) & 0x3fff) - 4;

			/* error summary bit check */
			if (rdes0 & 0x8000) {
				/* This is a error packet */
				dev->stats.rx_errors++;
				if (rdes0 & 1)
					dev->stats.rx_fifo_errors++;
				if (rdes0 & 2)
					dev->stats.rx_crc_errors++;
				if (rdes0 & 0x80)
					dev->stats.rx_length_errors++;
			}

			if ( !(rdes0 & 0x8000) ||
				((db->cr6_data & CR6_PM) && (rxlen>6)) ) {
				struct sk_buff *new_skb = NULL;

				skb = rxptr->rx_skb_ptr;

				/* Good packet, send to upper layer */
				/* Shorst packet used new SKB */
				if ((rxlen < RX_COPY_SIZE) &&
				    (((new_skb = FUNC3(dev, rxlen + 2)) != NULL))) {
					skb = new_skb;
					/* size less than COPY_SIZE, allocate a rxlen SKB */
					FUNC8(skb, 2); /* 16byte align */
					FUNC7(skb,
						     FUNC9(rxptr->rx_skb_ptr),
						     rxlen);
					FUNC10(db, rxptr->rx_skb_ptr);
				} else
					FUNC6(skb, rxlen);

				skb->protocol = FUNC1(skb, dev);
				FUNC4(skb);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += rxlen;

			} else {
				/* Reuse SKB buffer when the packet is error */
				FUNC0(0, "Reuse SK buffer, rdes0", rdes0);
				FUNC10(db, rxptr->rx_skb_ptr);
			}
		}

		rxptr = rxptr->next_rx_desc;
	}

	db->rx_ready_ptr = rxptr;
}