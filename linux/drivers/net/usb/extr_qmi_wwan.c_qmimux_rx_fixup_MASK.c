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
typedef  unsigned int u8 ;
struct usbnet {int dummy; } ;
struct sk_buff {unsigned int len; int* data; void* protocol; struct net_device* dev; } ;
struct qmimux_priv {int /*<<< orphan*/  stats64; } ;
struct qmimux_hdr {int pad; int /*<<< orphan*/  mux_id; int /*<<< orphan*/  pkt_len; } ;
struct pcpu_sw_netstats {unsigned int rx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ NET_RX_SUCCESS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct net_device*,unsigned int) ; 
 struct qmimux_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct net_device* FUNC5 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int*,unsigned int) ; 
 struct pcpu_sw_netstats* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usbnet *dev, struct sk_buff *skb)
{
	unsigned int len, offset = 0, pad_len, pkt_len;
	struct qmimux_hdr *hdr;
	struct net_device *net;
	struct sk_buff *skbn;
	u8 qmimux_hdr_sz = sizeof(*hdr);

	while (offset + qmimux_hdr_sz < skb->len) {
		hdr = (struct qmimux_hdr *)(skb->data + offset);
		len = FUNC0(hdr->pkt_len);

		/* drop the packet, bogus length */
		if (offset + len + qmimux_hdr_sz > skb->len)
			return 0;

		/* control packet, we do not know what to do */
		if (hdr->pad & 0x80)
			goto skip;

		/* extract padding length and check for valid length info */
		pad_len = hdr->pad & 0x3f;
		if (len == 0 || pad_len >= len)
			goto skip;
		pkt_len = len - pad_len;

		net = FUNC5(dev, hdr->mux_id);
		if (!net)
			goto skip;
		skbn = FUNC2(net, pkt_len);
		if (!skbn)
			return 0;
		skbn->dev = net;

		switch (skb->data[offset + qmimux_hdr_sz] & 0xf0) {
		case 0x40:
			skbn->protocol = FUNC1(ETH_P_IP);
			break;
		case 0x60:
			skbn->protocol = FUNC1(ETH_P_IPV6);
			break;
		default:
			/* not ip - do not know what to do */
			goto skip;
		}

		FUNC6(skbn, skb->data + offset + qmimux_hdr_sz, pkt_len);
		if (FUNC4(skbn) != NET_RX_SUCCESS) {
			net->stats.rx_errors++;
			return 0;
		} else {
			struct pcpu_sw_netstats *stats64;
			struct qmimux_priv *priv = FUNC3(net);

			stats64 = FUNC7(priv->stats64);
			FUNC8(&stats64->syncp);
			stats64->rx_packets++;
			stats64->rx_bytes += pkt_len;
			FUNC9(&stats64->syncp);
		}

skip:
		offset += len + qmimux_hdr_sz;
	}
	return 1;
}