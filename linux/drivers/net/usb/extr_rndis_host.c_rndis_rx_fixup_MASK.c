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
typedef  scalar_t__ u32 ;
struct usbnet {TYPE_2__* net; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rndis_data_hdr {int /*<<< orphan*/  msg_type; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  msg_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_frame_errors; } ;
struct TYPE_4__ {scalar_t__ hard_header_len; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ RNDIS_MSG_PACKET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,struct sk_buff*) ; 

int FUNC8(struct usbnet *dev, struct sk_buff *skb)
{
	/* This check is no longer done by usbnet */
	if (skb->len < dev->net->hard_header_len)
		return 0;

	/* peripheral may have batched packets to us... */
	while (FUNC1(skb->len)) {
		struct rndis_data_hdr	*hdr = (void *)skb->data;
		struct sk_buff		*skb2;
		u32			msg_type, msg_len, data_offset, data_len;

		msg_type = FUNC0(hdr->msg_type);
		msg_len = FUNC0(hdr->msg_len);
		data_offset = FUNC0(hdr->data_offset);
		data_len = FUNC0(hdr->data_len);

		/* don't choke if we see oob, per-packet data, etc */
		if (FUNC6(msg_type != RNDIS_MSG_PACKET || skb->len < msg_len
				|| (data_offset + data_len + 8) > msg_len)) {
			dev->net->stats.rx_frame_errors++;
			FUNC2(dev->net, "bad rndis message %d/%d/%d/%d, len %d\n",
				   FUNC0(hdr->msg_type),
				   msg_len, data_offset, data_len, skb->len);
			return 0;
		}
		FUNC4(skb, 8 + data_offset);

		/* at most one packet left? */
		if (FUNC1((data_len - skb->len) <= sizeof *hdr)) {
			FUNC5(skb, data_len);
			break;
		}

		/* try to return all the packets in the batch */
		skb2 = FUNC3(skb, GFP_ATOMIC);
		if (FUNC6(!skb2))
			break;
		FUNC4(skb, msg_len - sizeof *hdr);
		FUNC5(skb2, data_len);
		FUNC7(dev, skb2);
	}

	/* caller will usbnet_skb_return the remaining packet */
	return 1;
}