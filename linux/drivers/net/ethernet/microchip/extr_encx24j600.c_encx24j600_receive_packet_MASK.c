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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct rsv {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int ENOMEM ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  RRXDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC3 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct encx24j600_priv *priv,
				     struct rsv *rsv)
{
	struct net_device *dev = priv->ndev;
	struct sk_buff *skb = FUNC3(dev, rsv->len + NET_IP_ALIGN);

	if (!skb) {
		FUNC6("RX: OOM: packet dropped\n");
		dev->stats.rx_dropped++;
		return -ENOMEM;
	}
	FUNC8(skb, NET_IP_ALIGN);
	FUNC1(priv, RRXDATA, FUNC7(skb, rsv->len), rsv->len);

	if (FUNC4(priv))
		FUNC0("RX", skb->len, skb->data);

	skb->dev = dev;
	skb->protocol = FUNC2(skb, dev);
	skb->ip_summed = CHECKSUM_COMPLETE;

	/* Maintain stats */
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += rsv->len;

	FUNC5(skb);

	return 0;
}