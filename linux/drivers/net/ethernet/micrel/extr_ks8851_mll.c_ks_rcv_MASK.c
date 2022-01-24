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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct type_frame_head {int sts; int len; } ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks_net {int frame_cnt; int rc_rxqcr; struct type_frame_head* frame_head_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_RXFCTR ; 
 int /*<<< orphan*/  KS_RXFHBCR ; 
 int /*<<< orphan*/  KS_RXFHSR ; 
 int /*<<< orphan*/  KS_RXQCR ; 
 int RXFSHR_RXFV ; 
 int RXQCR_RRXEF ; 
 int RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int FUNC1 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct ks_net *ks, struct net_device *netdev)
{
	u32	i;
	struct type_frame_head *frame_hdr = ks->frame_head_info;
	struct sk_buff *skb;

	ks->frame_cnt = FUNC1(ks, KS_RXFCTR) >> 8;

	/* read all header information */
	for (i = 0; i < ks->frame_cnt; i++) {
		/* Checking Received packet status */
		frame_hdr->sts = FUNC1(ks, KS_RXFHSR);
		/* Get packet len from hardware */
		frame_hdr->len = FUNC1(ks, KS_RXFHBCR);
		frame_hdr++;
	}

	frame_hdr = ks->frame_head_info;
	while (ks->frame_cnt--) {
		if (FUNC9(!(frame_hdr->sts & RXFSHR_RXFV) ||
			     frame_hdr->len >= RX_BUF_SIZE ||
			     frame_hdr->len <= 0)) {

			/* discard an invalid packet */
			FUNC3(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_RRXEF));
			netdev->stats.rx_dropped++;
			if (!(frame_hdr->sts & RXFSHR_RXFV))
				netdev->stats.rx_frame_errors++;
			else
				netdev->stats.rx_length_errors++;
			frame_hdr++;
			continue;
		}

		skb = FUNC5(netdev, frame_hdr->len + 16);
		if (FUNC4(skb)) {
			FUNC8(skb, 2);
			/* read data block including CRC 4 bytes */
			FUNC2(ks, (u16 *)skb->data, frame_hdr->len);
			FUNC7(skb, frame_hdr->len - 4);
			skb->protocol = FUNC0(skb, netdev);
			FUNC6(skb);
			/* exclude CRC size */
			netdev->stats.rx_bytes += frame_hdr->len - 4;
			netdev->stats.rx_packets++;
		} else {
			FUNC3(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_RRXEF));
			netdev->stats.rx_dropped++;
		}
		frame_hdr++;
	}
}