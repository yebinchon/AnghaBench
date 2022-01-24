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
struct nfp_port {int /*<<< orphan*/  tc_offload_cnt; } ;
struct nfp_flower_priv {int /*<<< orphan*/  flow_table; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct nfp_fl_payload {int /*<<< orphan*/  fl_node; int /*<<< orphan*/  unmasked_data; int /*<<< orphan*/  mask_data; int /*<<< orphan*/  action_data; TYPE_2__ pre_tun_rule; int /*<<< orphan*/  in_hw; scalar_t__ nfp_tun_ipv4_addr; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; TYPE_1__ common; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_FLOW_DEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_fl_payload*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,struct nfp_fl_payload*) ; 
 struct nfp_fl_payload* FUNC5 (struct nfp_app*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  nfp_flower_table_params ; 
 int FUNC6 (struct nfp_app*,struct nfp_fl_payload*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfp_app*,struct nfp_fl_payload*) ; 
 int FUNC8 (struct nfp_app*,struct nfp_fl_payload*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 struct nfp_port* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_app*,scalar_t__) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct nfp_app *app, struct net_device *netdev,
		       struct flow_cls_offload *flow)
{
	struct nfp_flower_priv *priv = app->priv;
	struct netlink_ext_ack *extack = NULL;
	struct nfp_fl_payload *nfp_flow;
	struct nfp_port *port = NULL;
	int err;

	extack = flow->common.extack;
	if (FUNC9(netdev))
		port = FUNC10(netdev);

	nfp_flow = FUNC5(app, flow->cookie, netdev);
	if (!nfp_flow) {
		FUNC0(extack, "invalid entry: cannot remove flow that does not exist");
		return -ENOENT;
	}

	err = FUNC8(app, nfp_flow);
	if (err)
		goto err_free_merge_flow;

	if (nfp_flow->nfp_tun_ipv4_addr)
		FUNC11(app, nfp_flow->nfp_tun_ipv4_addr);

	if (!nfp_flow->in_hw) {
		err = 0;
		goto err_free_merge_flow;
	}

	if (nfp_flow->pre_tun_rule.dev)
		err = FUNC7(app, nfp_flow);
	else
		err = FUNC6(app, nfp_flow,
					   NFP_FLOWER_CMSG_TYPE_FLOW_DEL);
	/* Fall through on error. */

err_free_merge_flow:
	FUNC4(app, nfp_flow);
	if (port)
		port->tc_offload_cnt--;
	FUNC2(nfp_flow->action_data);
	FUNC2(nfp_flow->mask_data);
	FUNC2(nfp_flow->unmasked_data);
	FUNC1(FUNC12(&priv->flow_table,
					    &nfp_flow->fl_node,
					    nfp_flower_table_params));
	FUNC3(nfp_flow, rcu);
	return err;
}