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
struct skb_data {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct lan78xx_net {TYPE_2__* net; int /*<<< orphan*/  rxq_pause; int /*<<< orphan*/  flags; } ;
struct ethhdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_PAUSED ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,TYPE_2__*,char*,int,...) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  rx_status ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct lan78xx_net *dev, struct sk_buff *skb)
{
	int status;

	if (FUNC6(EVENT_RX_PAUSED, &dev->flags)) {
		FUNC5(&dev->rxq_pause, skb);
		return;
	}

	dev->net->stats.rx_packets++;
	dev->net->stats.rx_bytes += skb->len;

	skb->protocol = FUNC0(skb, dev->net);

	FUNC2(dev, rx_status, dev->net, "< rx, len %zu, type 0x%x\n",
		  skb->len + sizeof(struct ethhdr), skb->protocol);
	FUNC1(skb->cb, 0, sizeof(struct skb_data));

	if (FUNC4(skb))
		return;

	status = FUNC3(skb);
	if (status != NET_RX_SUCCESS)
		FUNC2(dev, rx_err, dev->net,
			  "netif_rx status %d\n", status);
}