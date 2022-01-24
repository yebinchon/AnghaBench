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
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct tc_cls_matchall_offload {int command; TYPE_1__ common; } ;
struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int NFP_FL_FEATS_VF_RLIM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
#define  TC_CLSMATCHALL_DESTROY 130 
#define  TC_CLSMATCHALL_REPLACE 129 
#define  TC_CLSMATCHALL_STATS 128 
 int FUNC1 (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ; 
 int FUNC2 (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ; 
 int FUNC3 (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ; 

int FUNC4(struct nfp_app *app, struct net_device *netdev,
				 struct tc_cls_matchall_offload *flow)
{
	struct netlink_ext_ack *extack = flow->common.extack;
	struct nfp_flower_priv *fl_priv = app->priv;

	if (!(fl_priv->flower_ext_feats & NFP_FL_FEATS_VF_RLIM)) {
		FUNC0(extack, "unsupported offload: loaded firmware does not support qos rate limit offload");
		return -EOPNOTSUPP;
	}

	switch (flow->command) {
	case TC_CLSMATCHALL_REPLACE:
		return FUNC1(app, netdev, flow,
						       extack);
	case TC_CLSMATCHALL_DESTROY:
		return FUNC2(app, netdev, flow,
						      extack);
	case TC_CLSMATCHALL_STATS:
		return FUNC3(app, netdev, flow,
						     extack);
	default:
		return -EOPNOTSUPP;
	}
}