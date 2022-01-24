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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {scalar_t__ protocol; int len; struct net_device* dev; int /*<<< orphan*/  data; } ;
struct net_device {int features; } ;
struct iphdr {scalar_t__ protocol; } ;
struct TYPE_2__ {int gso_size; int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EC ; 
 int /*<<< orphan*/  ET ; 
 int /*<<< orphan*/  ETHHDR ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  IC ; 
 int /*<<< orphan*/  IPHDR ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  IS ; 
 int /*<<< orphan*/  MSS ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_TSO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCPHDR ; 
 int TSO_IPPROTO_TCP ; 
 int /*<<< orphan*/  TYPE_ETH_WORK_MESSAGE ; 
 int UDP_HDR_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct iphdr*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, u64 *hopinfo)
{
	struct net_device *ndev = skb->dev;
	struct iphdr *iph;
	u8 l3hlen = 0, l4hlen = 0;
	u8 ethhdr, proto = 0, csum_enable = 0;
	u32 hdr_len, mss = 0;
	u32 i, len, nr_frags;
	int mss_index;

	ethhdr = FUNC14(skb->data);

	if (FUNC13(skb->protocol != FUNC2(ETH_P_IP)) &&
	    FUNC13(skb->protocol != FUNC2(ETH_P_8021Q)))
		goto out;

	if (FUNC13(!(skb->dev->features & NETIF_F_IP_CSUM)))
		goto out;

	iph = FUNC3(skb);
	if (FUNC13(FUNC5(iph)))
		goto out;

	if (FUNC6(iph->protocol == IPPROTO_TCP)) {
		l4hlen = FUNC12(skb) >> 2;
		csum_enable = 1;
		proto = TSO_IPPROTO_TCP;
		if (ndev->features & NETIF_F_TSO) {
			hdr_len = ethhdr + FUNC4(skb) + FUNC12(skb);
			mss = FUNC11(skb)->gso_size;

			if (FUNC9(skb)) {
				len = FUNC8(skb);
				nr_frags = FUNC11(skb)->nr_frags;

				for (i = 0; i < 2 && i < nr_frags; i++)
					len += FUNC7(
						&FUNC11(skb)->frags[i]);

				/* HW requires header must reside in 3 buffer */
				if (FUNC13(hdr_len > len)) {
					if (FUNC10(skb))
						return 0;
				}
			}

			if (!mss || ((skb->len - hdr_len) <= mss))
				goto out;

			mss_index = FUNC15(ndev, mss);
			if (FUNC13(mss_index < 0))
				return -EBUSY;

			*hopinfo |= FUNC0(ET) | FUNC1(MSS, mss_index);
		}
	} else if (iph->protocol == IPPROTO_UDP) {
		l4hlen = UDP_HDR_SIZE;
		csum_enable = 1;
	}
out:
	l3hlen = FUNC4(skb) >> 2;
	*hopinfo |= FUNC1(TCPHDR, l4hlen) |
		    FUNC1(IPHDR, l3hlen) |
		    FUNC1(ETHHDR, ethhdr) |
		    FUNC1(EC, csum_enable) |
		    FUNC1(IS, proto) |
		    FUNC0(IC) |
		    FUNC0(TYPE_ETH_WORK_MESSAGE);

	return 0;
}