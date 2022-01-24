#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; int actual_length; int transfer_buffer_length; struct kaweth_device* context; TYPE_1__* dev; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_6__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  name; } ;
struct kaweth_device {int end; scalar_t__ rx_buf; TYPE_2__* intf; struct net_device* net; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  status; int /*<<< orphan*/  term_wait; } ;
struct device {int dummy; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EILSEQ ; 
 int EOVERFLOW ; 
 int EPIPE ; 
 int EPROTO ; 
 int EREMOTEIO ; 
 int ESHUTDOWN ; 
 int ETIME ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct urb *urb)
{
	struct device *dev = &urb->dev->dev;
	struct kaweth_device *kaweth = urb->context;
	struct net_device *net = kaweth->net;
	int status = urb->status;
	unsigned long flags;
	int count = urb->actual_length;
	int count2 = urb->transfer_buffer_length;

	__u16 pkt_len = FUNC6((__le16 *)kaweth->rx_buf);

	struct sk_buff *skb;

	if (FUNC13(status == -EPIPE)) {
		net->stats.rx_errors++;
		kaweth->end = 1;
		FUNC14(&kaweth->term_wait);
		FUNC2(dev, "Status was -EPIPE.\n");
		return;
	}
	if (FUNC13(status == -ECONNRESET || status == -ESHUTDOWN)) {
		/* we are killed - set a flag and wake the disconnect handler */
		kaweth->end = 1;
		FUNC14(&kaweth->term_wait);
		FUNC2(dev, "Status was -ECONNRESET or -ESHUTDOWN.\n");
		return;
	}
	if (FUNC13(status == -EPROTO || status == -ETIME ||
		     status == -EILSEQ)) {
		net->stats.rx_errors++;
		FUNC2(dev, "Status was -EPROTO, -ETIME, or -EILSEQ.\n");
		return;
	}
	if (FUNC13(status == -EOVERFLOW)) {
		net->stats.rx_errors++;
		FUNC2(dev, "Status was -EOVERFLOW.\n");
	}
	FUNC11(&kaweth->device_lock, flags);
	if (FUNC0(kaweth->status)) {
		FUNC12(&kaweth->device_lock, flags);
		return;
	}
	FUNC12(&kaweth->device_lock, flags);

	if(status && status != -EREMOTEIO && count != 1) {
		FUNC3(&kaweth->intf->dev,
			"%s RX status: %d count: %d packet_len: %d\n",
			net->name, status, count, (int)pkt_len);
		FUNC5(kaweth, GFP_ATOMIC);
                return;
	}

	if(kaweth->net && (count > 2)) {
		if(pkt_len > (count - 2)) {
			FUNC3(&kaweth->intf->dev,
				"Packet length too long for USB frame (pkt_len: %x, count: %x)\n",
				pkt_len, count);
			FUNC3(&kaweth->intf->dev, "Packet len & 2047: %x\n",
				pkt_len & 2047);
			FUNC3(&kaweth->intf->dev, "Count 2: %x\n", count2);
		        FUNC5(kaweth, GFP_ATOMIC);
                        return;
                }

		if(!(skb = FUNC1(pkt_len+2))) {
		        FUNC5(kaweth, GFP_ATOMIC);
                        return;
		}

		FUNC10(skb, 2);    /* Align IP on 16 byte boundaries */

		FUNC8(skb, kaweth->rx_buf + 2, pkt_len);

		FUNC9(skb, pkt_len);

		skb->protocol = FUNC4(skb, net);

		FUNC7(skb);

		net->stats.rx_packets++;
		net->stats.rx_bytes += pkt_len;
	}

	FUNC5(kaweth, GFP_ATOMIC);
}