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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_802_3 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int MBIM_IPS0_VID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int*,int) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct usbnet *dev, u8 *buf, size_t len, u16 tci)
{
	__be16 proto = FUNC4(ETH_P_802_3);
	struct sk_buff *skb = NULL;

	if (tci < 256 || tci == MBIM_IPS0_VID) { /* IPS session? */
		if (len < sizeof(struct iphdr))
			goto err;

		switch (*buf & 0xf0) {
		case 0x40:
			proto = FUNC4(ETH_P_IP);
			break;
		case 0x60:
			if (FUNC5(buf, len))
				FUNC1(dev, buf, tci);
			proto = FUNC4(ETH_P_IPV6);
			break;
		default:
			goto err;
		}
	}

	skb = FUNC7(dev->net,  len + ETH_HLEN);
	if (!skb)
		goto err;

	/* add an ethernet header */
	FUNC8(skb, ETH_HLEN);
	FUNC10(skb);
	FUNC2(skb)->h_proto = proto;
	FUNC3(FUNC2(skb)->h_source);
	FUNC6(FUNC2(skb)->h_dest, dev->net->dev_addr, ETH_ALEN);

	/* add datagram */
	FUNC9(skb, buf, len);

	/* map MBIM session to VLAN */
	if (tci)
		FUNC0(skb, FUNC4(ETH_P_8021Q), tci);
err:
	return skb;
}