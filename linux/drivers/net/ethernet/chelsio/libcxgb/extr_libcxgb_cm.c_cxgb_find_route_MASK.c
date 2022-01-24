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
typedef  int /*<<< orphan*/  u8 ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct neighbour {TYPE_1__* dev; } ;
struct flowi4 {int dummy; } ;
struct cxgb4_lld_info {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgb4_lld_info*,struct net_device* (*) (struct net_device*),TYPE_1__*) ; 
 struct neighbour* FUNC2 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC4 (int /*<<< orphan*/ *,struct flowi4*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 

struct dst_entry *
FUNC6(struct cxgb4_lld_info *lldi,
		struct net_device *(*get_real_dev)(struct net_device *),
		__be32 local_ip, __be32 peer_ip, __be16 local_port,
		__be16 peer_port, u8 tos)
{
	struct rtable *rt;
	struct flowi4 fl4;
	struct neighbour *n;

	rt = FUNC4(&init_net, &fl4, NULL, peer_ip, local_ip,
				   peer_port, local_port, IPPROTO_TCP,
				   tos, 0);
	if (FUNC0(rt))
		return NULL;
	n = FUNC2(&rt->dst, &peer_ip);
	if (!n)
		return NULL;
	if (!FUNC1(lldi, get_real_dev, n->dev) &&
	    !(n->dev->flags & IFF_LOOPBACK)) {
		FUNC5(n);
		FUNC3(&rt->dst);
		return NULL;
	}
	FUNC5(n);
	return &rt->dst;
}