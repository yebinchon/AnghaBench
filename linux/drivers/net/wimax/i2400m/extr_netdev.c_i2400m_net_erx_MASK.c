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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum i2400m_cs { ____Placeholder_i2400m_cs } i2400m_cs ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
#define  I2400M_CS_IPV4 129 
#define  I2400M_CS_IPV4_0 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

void FUNC11(struct i2400m *i2400m, struct sk_buff *skb,
		    enum i2400m_cs cs)
{
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	struct device *dev = FUNC7(i2400m);

	FUNC3(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
		  i2400m, skb, skb->len, cs);
	switch(cs) {
	case I2400M_CS_IPV4_0:
	case I2400M_CS_IPV4:
		FUNC8(i2400m->wimax_dev.net_dev,
					  skb->data - ETH_HLEN,
					  FUNC0(ETH_P_IP));
		FUNC10(skb, -ETH_HLEN);
		skb->dev = i2400m->wimax_dev.net_dev;
		skb->protocol = FUNC6(ETH_P_IP);
		net_dev->stats.rx_packets++;
		net_dev->stats.rx_bytes += skb->len;
		break;
	default:
		FUNC5(dev, "ERX: BUG? CS type %u unsupported\n", cs);
		goto error;

	}
	FUNC4(3, dev, "ERX: receiving %d bytes to the network stack\n",
		 skb->len);
	FUNC1(4, dev, skb->data, skb->len);
	FUNC9(skb);	/* see notes in function header */
error:
	FUNC2(2, dev, "(i2400m %p skb %p [%u] cs %d) = void\n",
		i2400m, skb, skb->len, cs);
}