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
typedef  scalar_t__ u8 ;
struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  net; } ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct TYPE_2__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;
struct flowi4 {int flowi4_oif; void* saddr; void* fl4_sport; void* fl4_dport; void* daddr; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_tos; } ;
struct dst_cache {int dummy; } ;
typedef  int /*<<< orphan*/  fl4 ;
typedef  void* __be32 ;
typedef  void* __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 struct rtable* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct rtable* FUNC3 (struct dst_cache*,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_cache*,TYPE_1__*,void*) ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtable*) ; 
 int FUNC7 (struct sk_buff*,struct ip_tunnel_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,void**) ; 

__attribute__((used)) static struct rtable *FUNC10(struct vxlan_dev *vxlan, struct net_device *dev,
				      struct vxlan_sock *sock4,
				      struct sk_buff *skb, int oif, u8 tos,
				      __be32 daddr, __be32 *saddr, __be16 dport, __be16 sport,
				      struct dst_cache *dst_cache,
				      const struct ip_tunnel_info *info)
{
	bool use_cache = FUNC7(skb, info);
	struct rtable *rt = NULL;
	struct flowi4 fl4;

	if (!sock4)
		return FUNC0(-EIO);

	if (tos && !info)
		use_cache = false;
	if (use_cache) {
		rt = FUNC3(dst_cache, saddr);
		if (rt)
			return rt;
	}

	FUNC8(&fl4, 0, sizeof(fl4));
	fl4.flowi4_oif = oif;
	fl4.flowi4_tos = FUNC2(tos);
	fl4.flowi4_mark = skb->mark;
	fl4.flowi4_proto = IPPROTO_UDP;
	fl4.daddr = daddr;
	fl4.saddr = *saddr;
	fl4.fl4_dport = dport;
	fl4.fl4_sport = sport;

	rt = FUNC5(vxlan->net, &fl4);
	if (!FUNC1(rt)) {
		if (rt->dst.dev == dev) {
			FUNC9(dev, "circular route to %pI4\n", &daddr);
			FUNC6(rt);
			return FUNC0(-ELOOP);
		}

		*saddr = fl4.saddr;
		if (use_cache)
			FUNC4(dst_cache, &rt->dst, fl4.saddr);
	} else {
		FUNC9(dev, "no route to %pI4\n", &daddr);
		return FUNC0(-ENETUNREACH);
	}
	return rt;
}