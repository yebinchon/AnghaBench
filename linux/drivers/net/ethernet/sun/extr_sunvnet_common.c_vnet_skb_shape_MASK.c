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
struct sk_buff {int len; int data; scalar_t__ protocol; int csum_offset; scalar_t__ ip_summed; int /*<<< orphan*/  queue_mapping; int /*<<< orphan*/  dev; } ;
struct ipv6hdr {scalar_t__ nexthdr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  scalar_t__ __wsum ;
typedef  scalar_t__ __sum16 ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/  gso_type; int /*<<< orphan*/  gso_size; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int ETH_ZLEN ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int VNET_PACKET_SKIP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC23(struct sk_buff *skb, int ncookies)
{
	struct sk_buff *nskb;
	int i, len, pad, docopy;

	len = skb->len;
	pad = 0;
	if (len < ETH_ZLEN) {
		pad += ETH_ZLEN - skb->len;
		len += pad;
	}
	len += VNET_PACKET_SKIP;
	pad += 8 - (len & 7);

	/* make sure we have enough cookies and alignment in every frag */
	docopy = FUNC20(skb)->nr_frags >= ncookies;
	for (i = 0; i < FUNC20(skb)->nr_frags; i++) {
		skb_frag_t *f = &FUNC20(skb)->frags[i];

		docopy |= FUNC10(f) & 7;
	}
	if (((unsigned long)skb->data & 7) != VNET_PACKET_SKIP ||
	    FUNC21(skb) < pad ||
	    FUNC11(skb) < VNET_PACKET_SKIP || docopy) {
		int start = 0, offset;
		__wsum csum;

		len = skb->len > ETH_ZLEN ? skb->len : ETH_ZLEN;
		nskb = FUNC0(skb->dev, len);
		if (!nskb) {
			FUNC3(skb);
			return NULL;
		}
		FUNC16(nskb, VNET_PACKET_SKIP);

		nskb->protocol = skb->protocol;
		offset = FUNC13(skb) - skb->data;
		FUNC17(nskb, offset);
		offset = FUNC14(skb) - skb->data;
		FUNC18(nskb, offset);
		offset = FUNC22(skb) - skb->data;
		FUNC19(nskb, offset);

		offset = 0;
		nskb->csum_offset = skb->csum_offset;
		nskb->ip_summed = skb->ip_summed;

		if (skb->ip_summed == CHECKSUM_PARTIAL)
			start = FUNC7(skb);
		if (start) {
			int offset = start + nskb->csum_offset;

			/* copy the headers, no csum here */
			if (FUNC9(skb, 0, nskb->data, start)) {
				FUNC3(nskb);
				FUNC3(skb);
				return NULL;
			}

			/* copy the rest, with csum calculation */
			*(__sum16 *)(skb->data + offset) = 0;
			csum = FUNC8(skb, start,
						      nskb->data + start,
						      skb->len - start, 0);

			/* add in the header checksums */
			if (skb->protocol == FUNC4(ETH_P_IP)) {
				struct iphdr *iph = FUNC5(nskb);

				if (iph->protocol == IPPROTO_TCP ||
				    iph->protocol == IPPROTO_UDP) {
					csum = FUNC2(iph->saddr,
								 iph->daddr,
								 skb->len - start,
								 iph->protocol,
								 csum);
				}
			} else if (skb->protocol == FUNC4(ETH_P_IPV6)) {
				struct ipv6hdr *ip6h = FUNC6(nskb);

				if (ip6h->nexthdr == IPPROTO_TCP ||
				    ip6h->nexthdr == IPPROTO_UDP) {
					csum = FUNC1(&ip6h->saddr,
							       &ip6h->daddr,
							       skb->len - start,
							       ip6h->nexthdr,
							       csum);
				}
			}

			/* save the final result */
			*(__sum16 *)(nskb->data + offset) = csum;

			nskb->ip_summed = CHECKSUM_NONE;
		} else if (FUNC9(skb, 0, nskb->data, skb->len)) {
			FUNC3(nskb);
			FUNC3(skb);
			return NULL;
		}
		(void)FUNC15(nskb, skb->len);
		if (FUNC12(skb)) {
			FUNC20(nskb)->gso_size = FUNC20(skb)->gso_size;
			FUNC20(nskb)->gso_type = FUNC20(skb)->gso_type;
		}
		nskb->queue_mapping = skb->queue_mapping;
		FUNC3(skb);
		skb = nskb;
	}
	return skb;
}