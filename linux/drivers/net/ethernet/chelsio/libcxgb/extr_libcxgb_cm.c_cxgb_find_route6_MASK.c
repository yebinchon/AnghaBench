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
typedef  int /*<<< orphan*/  u8 ;
struct flowi6 {int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dst_entry {scalar_t__ error; } ;
struct cxgb4_lld_info {int dummy; } ;
typedef  int /*<<< orphan*/  fl6 ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int IFF_LOOPBACK ; 
 int IPV6_ADDR_LINKLOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgb4_lld_info*,struct net_device* (*) (struct net_device*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  init_net ; 
 TYPE_1__* FUNC3 (struct dst_entry*) ; 
 struct dst_entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flowi6*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi6*,int /*<<< orphan*/ ,int) ; 

struct dst_entry *
FUNC8(struct cxgb4_lld_info *lldi,
		 struct net_device *(*get_real_dev)(struct net_device *),
		 __u8 *local_ip, __u8 *peer_ip, __be16 local_port,
		 __be16 peer_port, u8 tos, __u32 sin6_scope_id)
{
	struct dst_entry *dst = NULL;

	if (FUNC0(CONFIG_IPV6)) {
		struct flowi6 fl6;

		FUNC7(&fl6, 0, sizeof(fl6));
		FUNC6(&fl6.daddr, peer_ip, 16);
		FUNC6(&fl6.saddr, local_ip, 16);
		if (FUNC5(&fl6.daddr) & IPV6_ADDR_LINKLOCAL)
			fl6.flowi6_oif = sin6_scope_id;
		dst = FUNC4(&init_net, NULL, &fl6);
		if (dst->error ||
		    (!FUNC1(lldi, get_real_dev,
					 FUNC3(dst)->dev) &&
		     !(FUNC3(dst)->dev->flags & IFF_LOOPBACK))) {
			FUNC2(dst);
			return NULL;
		}
	}

	return dst;
}