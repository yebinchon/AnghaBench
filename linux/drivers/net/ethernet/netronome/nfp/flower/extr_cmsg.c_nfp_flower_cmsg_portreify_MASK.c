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
struct nfp_repr {TYPE_4__* app; TYPE_2__* dst; } ;
struct nfp_flower_cmsg_portreify {int /*<<< orphan*/  info; scalar_t__ reserved; int /*<<< orphan*/  portnum; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_7__ {TYPE_1__ port_info; } ;
struct TYPE_6__ {TYPE_3__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_PORT_REIFY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_flower_cmsg_portreify* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct nfp_repr *repr, bool exists)
{
	struct nfp_flower_cmsg_portreify *msg;
	struct sk_buff *skb;

	skb = FUNC3(repr->app, sizeof(*msg),
				    NFP_FLOWER_CMSG_TYPE_PORT_REIFY,
				    GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	msg = FUNC4(skb);
	msg->portnum = FUNC1(repr->dst->u.port_info.port_id);
	msg->reserved = 0;
	msg->info = FUNC0(exists);

	FUNC2(repr->app->ctrl, skb);

	return 0;
}