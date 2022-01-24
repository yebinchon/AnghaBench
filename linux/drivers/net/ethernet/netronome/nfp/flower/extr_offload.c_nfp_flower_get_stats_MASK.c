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
typedef  size_t u32 ;
struct nfp_flower_priv {int /*<<< orphan*/  stats_lock; TYPE_3__* stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_ctx_id; } ;
struct nfp_fl_payload {int /*<<< orphan*/  linked_flows; TYPE_2__ meta; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int /*<<< orphan*/  stats; int /*<<< orphan*/  cookie; TYPE_1__ common; } ;
struct TYPE_6__ {scalar_t__ bytes; scalar_t__ pkts; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfp_fl_payload* FUNC4 (struct nfp_app*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_app*,struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct nfp_app *app, struct net_device *netdev,
		     struct flow_cls_offload *flow)
{
	struct nfp_flower_priv *priv = app->priv;
	struct netlink_ext_ack *extack = NULL;
	struct nfp_fl_payload *nfp_flow;
	u32 ctx_id;

	extack = flow->common.extack;
	nfp_flow = FUNC4(app, flow->cookie, netdev);
	if (!nfp_flow) {
		FUNC0(extack, "invalid entry: cannot dump stats for flow that does not exist");
		return -EINVAL;
	}

	ctx_id = FUNC1(nfp_flow->meta.host_ctx_id);

	FUNC6(&priv->stats_lock);
	/* If request is for a sub_flow, update stats from merged flows. */
	if (!FUNC3(&nfp_flow->linked_flows))
		FUNC5(app, nfp_flow);

	FUNC2(&flow->stats, priv->stats[ctx_id].bytes,
			  priv->stats[ctx_id].pkts, priv->stats[ctx_id].used);

	priv->stats[ctx_id].pkts = 0;
	priv->stats[ctx_id].bytes = 0;
	FUNC7(&priv->stats_lock);

	return 0;
}