#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usbnet {TYPE_2__* net; } ;
struct sk_buff {scalar_t__ len; unsigned char* data; int truesize; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct TYPE_5__ {scalar_t__ hard_header_len; TYPE_1__ stats; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_SINGLE_PACKET_SIZE ; 
 int RXW_PADDING ; 
 int RX_CMD_A_FCS ; 
 int RX_CMD_A_LEN ; 
 int RX_CMD_A_LONG ; 
 int RX_CMD_A_RED ; 
 int RX_CMD_A_RUNT ; 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  rx_err ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct usbnet *dev, struct sk_buff *skb)
{
	/* This check is no longer done by usbnet */
	if (skb->len < dev->net->hard_header_len)
		return 0;

	while (skb->len > 0) {
		u32 rx_cmd_a, rx_cmd_b, align_count, size;
		struct sk_buff *ax_skb;
		unsigned char *packet;

		rx_cmd_a = FUNC0(skb->data);
		FUNC4(skb, 4);

		rx_cmd_b = FUNC0(skb->data);
		FUNC4(skb, 4 + RXW_PADDING);

		packet = skb->data;

		/* get the packet length */
		size = (rx_cmd_a & RX_CMD_A_LEN) - RXW_PADDING;
		align_count = (4 - ((size + RXW_PADDING) % 4)) % 4;

		if (FUNC8(rx_cmd_a & RX_CMD_A_RED)) {
			FUNC2(dev, rx_err, dev->net,
				  "Error rx_cmd_a=0x%08x\n", rx_cmd_a);
			dev->net->stats.rx_errors++;
			dev->net->stats.rx_dropped++;

			if (rx_cmd_a & RX_CMD_A_FCS)
				dev->net->stats.rx_crc_errors++;
			else if (rx_cmd_a & (RX_CMD_A_LONG | RX_CMD_A_RUNT))
				dev->net->stats.rx_frame_errors++;
		} else {
			/* MAX_SINGLE_PACKET_SIZE + 4(CRC) + 2(COE) + 4(Vlan) */
			if (FUNC8(size > (MAX_SINGLE_PACKET_SIZE + ETH_HLEN + 12))) {
				FUNC2(dev, rx_err, dev->net,
					  "size err rx_cmd_a=0x%08x\n",
					  rx_cmd_a);
				return 0;
			}

			/* last frame in this batch */
			if (skb->len == size) {
				FUNC7(dev, skb, rx_cmd_a,
					rx_cmd_b);

				FUNC6(skb, skb->len - 4); /* remove fcs */
				skb->truesize = size + sizeof(struct sk_buff);

				return 1;
			}

			ax_skb = FUNC3(skb, GFP_ATOMIC);
			if (FUNC8(!ax_skb)) {
				FUNC1(dev->net, "Error allocating skb\n");
				return 0;
			}

			ax_skb->len = size;
			ax_skb->data = packet;
			FUNC5(ax_skb, size);

			FUNC7(dev, ax_skb, rx_cmd_a,
				rx_cmd_b);

			FUNC6(ax_skb, ax_skb->len - 4); /* remove fcs */
			ax_skb->truesize = size + sizeof(struct sk_buff);

			FUNC9(dev, ax_skb);
		}

		FUNC4(skb, size);

		/* padding bytes before the next frame starts */
		if (skb->len)
			FUNC4(skb, align_count);
	}

	return 1;
}