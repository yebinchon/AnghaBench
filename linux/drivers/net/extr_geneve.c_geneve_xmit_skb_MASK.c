#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct net_device {int dummy; } ;
struct iphdr {int frag_off; } ;
struct ip_tunnel_key {int tun_flags; scalar_t__ ttl; int /*<<< orphan*/  tos; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; scalar_t__ options_len; } ;
struct geneve_sock {TYPE_1__* sock; } ;
struct TYPE_5__ {int /*<<< orphan*/  tp_dst; } ;
struct TYPE_6__ {TYPE_2__ key; } ;
struct geneve_dev {scalar_t__ df; int /*<<< orphan*/  dev; int /*<<< orphan*/  net; TYPE_3__ info; scalar_t__ ttl_inherit; scalar_t__ collect_md; int /*<<< orphan*/  sock4; } ;
struct flowi4 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowi4_tos; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
typedef  scalar_t__ __u8 ;
typedef  int __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 scalar_t__ GENEVE_DF_INHERIT ; 
 scalar_t__ GENEVE_DF_SET ; 
 scalar_t__ GENEVE_IPV4_HLEN ; 
 int /*<<< orphan*/  IP_DF ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int FUNC1 (struct rtable*) ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_DONT_FRAGMENT ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sk_buff*,struct ip_tunnel_info const*,int,int) ; 
 struct rtable* FUNC5 (struct sk_buff*,struct net_device*,struct geneve_sock*,struct flowi4*,struct ip_tunnel_info const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct iphdr*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct iphdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct geneve_sock* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rtable*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *dev,
			   struct geneve_dev *geneve,
			   const struct ip_tunnel_info *info)
{
	bool xnet = !FUNC11(geneve->net, FUNC2(geneve->dev));
	struct geneve_sock *gs4 = FUNC13(geneve->sock4);
	const struct ip_tunnel_key *key = &info->key;
	struct rtable *rt;
	struct flowi4 fl4;
	__u8 tos, ttl;
	__be16 df = 0;
	__be16 sport;
	int err;

	rt = FUNC5(skb, dev, gs4, &fl4, info);
	if (FUNC0(rt))
		return FUNC1(rt);

	FUNC14(skb, &rt->dst,
			      GENEVE_IPV4_HLEN + info->options_len);

	sport = FUNC15(geneve->net, skb, 1, USHRT_MAX, true);
	if (geneve->collect_md) {
		tos = FUNC9(key->tos, FUNC8(skb), skb);
		ttl = key->ttl;

		df = key->tun_flags & TUNNEL_DONT_FRAGMENT ? FUNC6(IP_DF) : 0;
	} else {
		tos = FUNC9(fl4.flowi4_tos, FUNC8(skb), skb);
		if (geneve->ttl_inherit)
			ttl = FUNC10(FUNC8(skb), skb);
		else
			ttl = key->ttl;
		ttl = ttl ? : FUNC7(&rt->dst);

		if (geneve->df == GENEVE_DF_SET) {
			df = FUNC6(IP_DF);
		} else if (geneve->df == GENEVE_DF_INHERIT) {
			struct ethhdr *eth = FUNC3(skb);

			if (FUNC12(eth->h_proto) == ETH_P_IPV6) {
				df = FUNC6(IP_DF);
			} else if (FUNC12(eth->h_proto) == ETH_P_IP) {
				struct iphdr *iph = FUNC8(skb);

				if (iph->frag_off & FUNC6(IP_DF))
					df = FUNC6(IP_DF);
			}
		}
	}

	err = FUNC4(&rt->dst, skb, info, xnet, sizeof(struct iphdr));
	if (FUNC17(err))
		return err;

	FUNC16(rt, gs4->sock->sk, skb, fl4.saddr, fl4.daddr,
			    tos, ttl, df, sport, geneve->info.key.tp_dst,
			    !FUNC11(geneve->net, FUNC2(geneve->dev)),
			    !(info->key.tun_flags & TUNNEL_CSUM));
	return 0;
}