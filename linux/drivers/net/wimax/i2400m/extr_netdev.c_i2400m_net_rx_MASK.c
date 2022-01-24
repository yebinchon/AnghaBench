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
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct i2400m*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,void const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 

void FUNC17(struct i2400m *i2400m, struct sk_buff *skb_rx,
		   unsigned i, const void *buf, int buf_len)
{
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	struct device *dev = FUNC8(i2400m);
	struct sk_buff *skb;

	FUNC4(2, dev, "(i2400m %p buf %p buf_len %d)\n",
		  i2400m, buf, buf_len);
	if (i) {
		skb = FUNC12(skb_rx);
		FUNC5(2, dev, "RX: reusing first payload skb %p\n", skb);
		FUNC13(skb, buf - (void *) skb->data);
		FUNC16(skb, (void *) FUNC11(skb) - buf);
	} else {
		/* Yes, this is bad -- a lot of overhead -- see
		 * comments at the top of the file */
		skb = FUNC0(net_dev, buf_len, GFP_KERNEL);
		if (skb == NULL) {
			FUNC6(dev, "NETRX: no memory to realloc skb\n");
			net_dev->stats.rx_dropped++;
			goto error_skb_realloc;
		}
		FUNC14(skb, buf, buf_len);
	}
	FUNC9(i2400m->wimax_dev.net_dev,
				  skb->data - ETH_HLEN,
				  FUNC1(ETH_P_IP));
	FUNC15(skb, -ETH_HLEN);
	skb->dev = i2400m->wimax_dev.net_dev;
	skb->protocol = FUNC7(ETH_P_IP);
	net_dev->stats.rx_packets++;
	net_dev->stats.rx_bytes += buf_len;
	FUNC5(3, dev, "NETRX: receiving %d bytes to network stack\n",
		buf_len);
	FUNC2(4, dev, buf, buf_len);
	FUNC10(skb);	/* see notes in function header */
error_skb_realloc:
	FUNC3(2, dev, "(i2400m %p buf %p buf_len %d) = void\n",
		i2400m, buf, buf_len);
}