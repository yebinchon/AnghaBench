#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vl600_state {struct sk_buff* current_rx_buf; } ;
struct vl600_pkt_hdr {int /*<<< orphan*/  len; } ;
struct vl600_frame_hdr {int /*<<< orphan*/  pkt_cnt; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;
struct usbnet {TYPE_2__* net; struct vl600_state* driver_priv; } ;
struct sk_buff {int* data; int len; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_4__ {int* dev_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct usbnet *dev, struct sk_buff *skb)
{
	struct vl600_frame_hdr *frame;
	struct vl600_pkt_hdr *packet;
	struct ethhdr *ethhdr;
	int packet_len, count;
	struct sk_buff *buf = skb;
	struct sk_buff *clone;
	struct vl600_state *s = dev->driver_priv;

	/* Frame lengths are generally 4B multiplies but every couple of
	 * hours there's an odd number of bytes sized yet correct frame,
	 * so don't require this.  */

	/* Allow a packet (or multiple packets batched together) to be
	 * split across many frames.  We don't allow a new batch to
	 * begin in the same frame another one is ending however, and no
	 * leading or trailing pad bytes.  */
	if (s->current_rx_buf) {
		frame = (struct vl600_frame_hdr *) s->current_rx_buf->data;
		if (skb->len + s->current_rx_buf->len >
				FUNC4(&frame->len)) {
			FUNC6(dev, ifup, dev->net, "Fragment too long\n");
			dev->net->stats.rx_length_errors++;
			goto error;
		}

		buf = s->current_rx_buf;
		FUNC11(buf, skb->data, skb->len);
	} else if (skb->len < 4) {
		FUNC6(dev, ifup, dev->net, "Frame too short\n");
		dev->net->stats.rx_length_errors++;
		goto error;
	}

	frame = (struct vl600_frame_hdr *) buf->data;
	/* Yes, check that frame->magic == 0x53544448 (or 0x44544d48),
	 * otherwise we may run out of memory w/a bad packet */
	if (FUNC7(frame->magic) != 0x53544448 &&
			FUNC7(frame->magic) != 0x44544d48)
		goto error;

	if (buf->len < sizeof(*frame) ||
			buf->len != FUNC4(&frame->len)) {
		/* Save this fragment for later assembly */
		if (s->current_rx_buf)
			return 0;

		s->current_rx_buf = FUNC9(skb, 0,
				FUNC4(&frame->len), GFP_ATOMIC);
		if (!s->current_rx_buf)
			dev->net->stats.rx_errors++;

		return 0;
	}

	count = FUNC4(&frame->pkt_cnt);

	FUNC10(buf, sizeof(*frame));

	while (count--) {
		if (buf->len < sizeof(*packet)) {
			FUNC6(dev, ifup, dev->net, "Packet too short\n");
			goto error;
		}

		packet = (struct vl600_pkt_hdr *) buf->data;
		packet_len = sizeof(*packet) + FUNC4(&packet->len);
		if (packet_len > buf->len) {
			FUNC6(dev, ifup, dev->net,
					"Bad packet length stored in header\n");
			goto error;
		}

		/* Packet header is same size as the ethernet header
		 * (sizeof(*packet) == sizeof(*ethhdr)), additionally
		 * the h_proto field is in the same place so we just leave it
		 * alone and fill in the remaining fields.
		 */
		ethhdr = (struct ethhdr *) skb->data;
		if (FUNC0(&ethhdr->h_proto) == ETH_P_ARP &&
				buf->len > 0x26) {
			/* Copy the addresses from packet contents */
			FUNC5(ethhdr->h_source,
					&buf->data[sizeof(*ethhdr) + 0x8],
					ETH_ALEN);
			FUNC5(ethhdr->h_dest,
					&buf->data[sizeof(*ethhdr) + 0x12],
					ETH_ALEN);
		} else {
			FUNC2(ethhdr->h_source);
			FUNC5(ethhdr->h_dest, dev->net->dev_addr, ETH_ALEN);

			/* Inbound IPv6 packets have an IPv4 ethertype (0x800)
			 * for some reason.  Peek at the L3 header to check
			 * for IPv6 packets, and set the ethertype to IPv6
			 * (0x86dd) so Linux can understand it.
			 */
			if ((buf->data[sizeof(*ethhdr)] & 0xf0) == 0x60)
				ethhdr->h_proto = FUNC3(ETH_P_IPV6);
		}

		if (count) {
			/* Not the last packet in this batch */
			clone = FUNC8(buf, GFP_ATOMIC);
			if (!clone)
				goto error;

			FUNC12(clone, packet_len);
			FUNC13(dev, clone);

			FUNC10(buf, (packet_len + 3) & ~3);
		} else {
			FUNC12(buf, packet_len);

			if (s->current_rx_buf) {
				FUNC13(dev, buf);
				s->current_rx_buf = NULL;
				return 0;
			}

			return 1;
		}
	}

error:
	if (s->current_rx_buf) {
		FUNC1(s->current_rx_buf);
		s->current_rx_buf = NULL;
	}
	dev->net->stats.rx_errors++;
	return 0;
}