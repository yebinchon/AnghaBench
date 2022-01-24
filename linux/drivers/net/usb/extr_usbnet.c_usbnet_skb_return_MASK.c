#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  rxq_pause; int /*<<< orphan*/  flags; int /*<<< orphan*/  stats64; } ;
struct skb_data {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  cb; scalar_t__ len; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_PAUSED ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  rx_status ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pcpu_sw_netstats* FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10 (struct usbnet *dev, struct sk_buff *skb)
{
	struct pcpu_sw_netstats *stats64 = FUNC7(dev->stats64);
	unsigned long flags;
	int	status;

	if (FUNC6(EVENT_RX_PAUSED, &dev->flags)) {
		FUNC5(&dev->rxq_pause, skb);
		return;
	}

	/* only update if unset to allow minidriver rx_fixup override */
	if (skb->protocol == 0)
		skb->protocol = FUNC0 (skb, dev->net);

	flags = FUNC8(&stats64->syncp);
	stats64->rx_packets++;
	stats64->rx_bytes += skb->len;
	FUNC9(&stats64->syncp, flags);

	FUNC2(dev, rx_status, dev->net, "< rx, len %zu, type 0x%x\n",
		  skb->len + sizeof (struct ethhdr), skb->protocol);
	FUNC1 (skb->cb, 0, sizeof (struct skb_data));

	if (FUNC4(skb))
		return;

	status = FUNC3 (skb);
	if (status != NET_RX_SUCCESS)
		FUNC2(dev, rx_err, dev->net,
			  "netif_rx status %d\n", status);
}