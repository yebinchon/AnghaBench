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
struct xircom_private {int /*<<< orphan*/ * rx_buffer; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {short rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,short) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,short) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xircom_private*) ; 

__attribute__((used)) static void
FUNC10(struct net_device *dev, struct xircom_private *card,
			    int descnr, unsigned int bufferoffset)
{
	int status;

	status = FUNC2(card->rx_buffer[4*descnr]);

	if (status > 0) {		/* packet received */

		/* TODO: discard error packets */

		short pkt_len = ((status >> 16) & 0x7ff) - 4;
					/* minus 4, we don't want the CRC */
		struct sk_buff *skb;

		if (pkt_len > 1518) {
			FUNC4(dev, "Packet length %i is bogus\n", pkt_len);
			pkt_len = 1518;
		}

		skb = FUNC3(dev, pkt_len + 2);
		if (skb == NULL) {
			dev->stats.rx_dropped++;
			goto out;
		}
		FUNC8(skb, 2);
		FUNC6(skb,
					&card->rx_buffer[bufferoffset / 4],
					pkt_len);
		FUNC7(skb, pkt_len);
		skb->protocol = FUNC1(skb, dev);
		FUNC5(skb);
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += pkt_len;

out:
		/* give the buffer back to the card */
		card->rx_buffer[4*descnr] = FUNC0(0x80000000);
		FUNC9(card);
	}
}