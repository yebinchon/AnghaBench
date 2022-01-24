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
struct sk_buff {int dummy; } ;
struct nfp_repr {TYPE_4__* app; TYPE_3__* dst; } ;
struct nfp_flower_cmsg_portmod {int info; int /*<<< orphan*/  mtu; scalar_t__ reserved; int /*<<< orphan*/  portnum; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_6__ {TYPE_1__ port_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_PORT_MOD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_flower_cmsg_portmod* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct nfp_repr *repr, bool carrier_ok,
			    unsigned int mtu, bool mtu_only)
{
	struct nfp_flower_cmsg_portmod *msg;
	struct sk_buff *skb;

	skb = FUNC3(repr->app, sizeof(*msg),
				    NFP_FLOWER_CMSG_TYPE_PORT_MOD, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	msg = FUNC4(skb);
	msg->portnum = FUNC1(repr->dst->u.port_info.port_id);
	msg->reserved = 0;
	msg->info = carrier_ok;

	if (mtu_only)
		msg->info |= NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY;

	msg->mtu = FUNC0(mtu);

	FUNC2(repr->app->ctrl, skb);

	return 0;
}