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
typedef  unsigned int u8 ;
struct xfrm_state {int /*<<< orphan*/  data; } ;
struct sk_buff {unsigned int len; void* protocol; } ;
struct ipv6hdr {void* payload_len; } ;
struct iphdr {void* tot_len; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct iphdr*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 int FUNC7 (struct sk_buff*,unsigned int,unsigned int*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct xfrm_state *x)
{
	unsigned int alen = FUNC0(x->data);
	struct ipv6hdr *ipv6hdr = FUNC4(skb);
	struct iphdr *ipv4hdr = FUNC2(skb);
	unsigned int trailer_len;
	u8 plen;
	int ret;

	ret = FUNC7(skb, skb->len - alen - 2, &plen, 1);
	if (FUNC8(ret))
		return ret;

	trailer_len = alen + plen + 2;

	FUNC6(skb, skb->len - trailer_len);
	if (skb->protocol == FUNC1(ETH_P_IP)) {
		ipv4hdr->tot_len = FUNC1(FUNC5(ipv4hdr->tot_len) - trailer_len);
		FUNC3(ipv4hdr);
	} else {
		ipv6hdr->payload_len = FUNC1(FUNC5(ipv6hdr->payload_len) -
					     trailer_len);
	}
	return 0;
}