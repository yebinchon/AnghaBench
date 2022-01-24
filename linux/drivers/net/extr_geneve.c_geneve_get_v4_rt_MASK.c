#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct TYPE_8__ {struct net_device* dev; } ;
struct rtable {TYPE_4__ dst; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_7__ {int tos; TYPE_2__ u; } ;
struct ip_tunnel_info {int /*<<< orphan*/  dst_cache; TYPE_3__ key; } ;
struct geneve_sock {int dummy; } ;
struct geneve_dev {int /*<<< orphan*/  net; int /*<<< orphan*/  collect_md; } ;
struct flowi4 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_mark; } ;
struct dst_cache {int dummy; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 struct rtable* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct rtable* FUNC3 (struct dst_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_cache*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct rtable* FUNC6 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtable*) ; 
 int FUNC8 (struct sk_buff*,struct ip_tunnel_info const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int /*<<< orphan*/ *) ; 
 struct geneve_dev* FUNC12 (struct net_device*) ; 

__attribute__((used)) static struct rtable *FUNC13(struct sk_buff *skb,
				       struct net_device *dev,
				       struct geneve_sock *gs4,
				       struct flowi4 *fl4,
				       const struct ip_tunnel_info *info)
{
	bool use_cache = FUNC8(skb, info);
	struct geneve_dev *geneve = FUNC12(dev);
	struct dst_cache *dst_cache;
	struct rtable *rt = NULL;
	__u8 tos;

	if (!gs4)
		return FUNC0(-EIO);

	FUNC10(fl4, 0, sizeof(*fl4));
	fl4->flowi4_mark = skb->mark;
	fl4->flowi4_proto = IPPROTO_UDP;
	fl4->daddr = info->key.u.ipv4.dst;
	fl4->saddr = info->key.u.ipv4.src;

	tos = info->key.tos;
	if ((tos == 1) && !geneve->collect_md) {
		tos = FUNC9(FUNC5(skb), skb);
		use_cache = false;
	}
	fl4->flowi4_tos = FUNC2(tos);

	dst_cache = (struct dst_cache *)&info->dst_cache;
	if (use_cache) {
		rt = FUNC3(dst_cache, &fl4->saddr);
		if (rt)
			return rt;
	}
	rt = FUNC6(geneve->net, fl4);
	if (FUNC1(rt)) {
		FUNC11(dev, "no route to %pI4\n", &fl4->daddr);
		return FUNC0(-ENETUNREACH);
	}
	if (rt->dst.dev == dev) { /* is this necessary? */
		FUNC11(dev, "circular route to %pI4\n", &fl4->daddr);
		FUNC7(rt);
		return FUNC0(-ELOOP);
	}
	if (use_cache)
		FUNC4(dst_cache, &rt->dst, fl4->saddr);
	return rt;
}