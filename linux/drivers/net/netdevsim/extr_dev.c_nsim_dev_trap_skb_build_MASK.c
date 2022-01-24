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
typedef  int /*<<< orphan*/  u16 ;
struct udphdr {void* len; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sk_buff {int /*<<< orphan*/  len; void* protocol; } ;
struct iphdr {int version; int ihl; int ttl; scalar_t__ check; void* tot_len; scalar_t__ frag_off; void* daddr; void* saddr; int /*<<< orphan*/  protocol; } ;
struct ethhdr {void* h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NSIM_TRAP_L4_DATA_LEN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char*,int) ; 
 void* FUNC6 (struct sk_buff*,int) ; 
 struct udphdr* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC11(void)
{
	int tot_len, data_len = NSIM_TRAP_L4_DATA_LEN;
	struct sk_buff *skb;
	struct udphdr *udph;
	struct ethhdr *eth;
	struct iphdr *iph;

	skb = FUNC0(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb)
		return NULL;
	tot_len = sizeof(struct iphdr) + sizeof(struct udphdr) + data_len;

	FUNC8(skb);
	eth = FUNC6(skb, sizeof(struct ethhdr));
	FUNC1(eth->h_dest);
	FUNC1(eth->h_source);
	eth->h_proto = FUNC3(ETH_P_IP);
	skb->protocol = FUNC3(ETH_P_IP);

	FUNC9(skb, skb->len);
	iph = FUNC6(skb, sizeof(struct iphdr));
	iph->protocol = IPPROTO_UDP;
	iph->saddr = FUNC4("192.0.2.1");
	iph->daddr = FUNC4("198.51.100.1");
	iph->version = 0x4;
	iph->frag_off = 0;
	iph->ihl = 0x5;
	iph->tot_len = FUNC3(tot_len);
	iph->ttl = 100;
	iph->check = 0;
	iph->check = FUNC5((unsigned char *)iph, iph->ihl);

	FUNC10(skb, skb->len);
	udph = FUNC7(skb, sizeof(struct udphdr) + data_len);
	FUNC2(&udph->source, sizeof(u16));
	FUNC2(&udph->dest, sizeof(u16));
	udph->len = FUNC3(sizeof(struct udphdr) + data_len);

	return skb;
}