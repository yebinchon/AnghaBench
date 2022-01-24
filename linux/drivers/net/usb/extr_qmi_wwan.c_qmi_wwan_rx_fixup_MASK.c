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
struct usbnet {TYPE_1__* net; int /*<<< orphan*/  data; } ;
struct sk_buff {scalar_t__ len; int* data; void* protocol; TYPE_1__* dev; } ;
struct qmi_wwan_state {int flags; } ;
typedef  void* __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; void* h_proto; } ;
struct TYPE_3__ {scalar_t__ hard_header_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int QMI_WWAN_FLAG_MUX ; 
 int QMI_WWAN_FLAG_RAWIP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbnet*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, struct sk_buff *skb)
{
	struct qmi_wwan_state *info = (void *)&dev->data;
	bool rawip = info->flags & QMI_WWAN_FLAG_RAWIP;
	__be16 proto;

	/* This check is no longer done by usbnet */
	if (skb->len < dev->net->hard_header_len)
		return 0;

	if (info->flags & QMI_WWAN_FLAG_MUX)
		return FUNC5(dev, skb);

	switch (skb->data[0] & 0xf0) {
	case 0x40:
		proto = FUNC2(ETH_P_IP);
		break;
	case 0x60:
		proto = FUNC2(ETH_P_IPV6);
		break;
	case 0x00:
		if (rawip)
			return 0;
		if (FUNC3(skb->data))
			return 1;
		/* possibly bogus destination - rewrite just in case */
		FUNC8(skb);
		goto fix_dest;
	default:
		if (rawip)
			return 0;
		/* pass along other packets without modifications */
		return 1;
	}
	if (rawip) {
		FUNC8(skb);
		skb->dev = dev->net; /* normally set by eth_type_trans */
		skb->protocol = proto;
		return 1;
	}

	if (FUNC6(skb) < ETH_HLEN)
		return 0;
	FUNC7(skb, ETH_HLEN);
	FUNC8(skb);
	FUNC0(skb)->h_proto = proto;
	FUNC1(FUNC0(skb)->h_source);
fix_dest:
	FUNC4(FUNC0(skb)->h_dest, dev->net->dev_addr, ETH_ALEN);
	return 1;
}