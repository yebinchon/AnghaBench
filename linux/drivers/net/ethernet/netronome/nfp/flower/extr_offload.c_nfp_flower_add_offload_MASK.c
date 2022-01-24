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
struct nfp_fl_payload {int in_hw; struct nfp_fl_payload* unmasked_data; struct nfp_fl_payload* mask_data; struct nfp_fl_payload* action_data; int /*<<< orphan*/  fl_node; TYPE_2__ pre_tun_rule; int /*<<< orphan*/  tc_flower_cookie; } ;
struct nfp_fl_key_ls {int in_hw; struct nfp_fl_key_ls* unmasked_data; struct nfp_fl_key_ls* mask_data; struct nfp_fl_key_ls* action_data; int /*<<< orphan*/  fl_node; TYPE_2__ pre_tun_rule; int /*<<< orphan*/  tc_flower_cookie; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; TYPE_1__ common; } ;
typedef  enum nfp_flower_tun_type { ____Placeholder_nfp_flower_tun_type } nfp_flower_tun_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_FLOW_ADD ; 
 int NFP_FL_TUNNEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_fl_payload*) ; 
 struct nfp_fl_payload* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nfp_app*,struct flow_cls_offload*,struct nfp_fl_payload*,struct net_device*,struct netlink_ext_ack*) ; 
 struct nfp_fl_payload* FUNC5 (struct nfp_fl_payload*) ; 
 int FUNC6 (struct nfp_app*,struct net_device*,struct nfp_fl_payload*,struct flow_cls_offload*,int*,struct netlink_ext_ack*) ; 
 int FUNC7 (struct nfp_app*,struct flow_cls_offload*,struct net_device*,struct nfp_fl_payload*,struct netlink_ext_ack*) ; 
 int FUNC8 (struct nfp_app*,struct flow_cls_offload*,struct nfp_fl_payload*,struct net_device*,struct nfp_fl_payload*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  nfp_flower_table_params ; 
 int FUNC9 (struct nfp_app*,struct nfp_fl_payload*,struct netlink_ext_ack*) ; 
 int FUNC10 (struct nfp_app*,struct nfp_fl_payload*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nfp_app*,struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_app*,struct nfp_fl_payload*) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 struct nfp_port* FUNC14 (struct net_device*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct nfp_app *app, struct net_device *netdev,
		       struct flow_cls_offload *flow)
{
	enum nfp_flower_tun_type tun_type = NFP_FL_TUNNEL_NONE;
	struct nfp_flower_priv *priv = app->priv;
	struct netlink_ext_ack *extack = NULL;
	struct nfp_fl_payload *flow_pay;
	struct nfp_fl_key_ls *key_layer;
	struct nfp_port *port = NULL;
	int err;

	extack = flow->common.extack;
	if (FUNC13(netdev))
		port = FUNC14(netdev);

	key_layer = FUNC3(sizeof(*key_layer), GFP_KERNEL);
	if (!key_layer)
		return -ENOMEM;

	err = FUNC6(app, netdev, key_layer, flow,
					      &tun_type, extack);
	if (err)
		goto err_free_key_ls;

	flow_pay = FUNC5(key_layer);
	if (!flow_pay) {
		err = -ENOMEM;
		goto err_free_key_ls;
	}

	err = FUNC8(app, flow, key_layer, netdev,
					    flow_pay, tun_type, extack);
	if (err)
		goto err_destroy_flow;

	err = FUNC7(app, flow, netdev, flow_pay, extack);
	if (err)
		goto err_destroy_flow;

	if (flow_pay->pre_tun_rule.dev) {
		err = FUNC9(app, flow_pay, extack);
		if (err)
			goto err_destroy_flow;
	}

	err = FUNC4(app, flow, flow_pay, netdev, extack);
	if (err)
		goto err_destroy_flow;

	flow_pay->tc_flower_cookie = flow->cookie;
	err = FUNC15(&priv->flow_table, &flow_pay->fl_node,
				     nfp_flower_table_params);
	if (err) {
		FUNC0(extack, "invalid entry: cannot insert flow into tables for offloads");
		goto err_release_metadata;
	}

	if (flow_pay->pre_tun_rule.dev)
		err = FUNC11(app, flow_pay);
	else
		err = FUNC10(app, flow_pay,
					   NFP_FLOWER_CMSG_TYPE_FLOW_ADD);
	if (err)
		goto err_remove_rhash;

	if (port)
		port->tc_offload_cnt++;

	flow_pay->in_hw = true;

	/* Deallocate flow payload when flower rule has been destroyed. */
	FUNC2(key_layer);

	return 0;

err_remove_rhash:
	FUNC1(FUNC16(&priv->flow_table,
					    &flow_pay->fl_node,
					    nfp_flower_table_params));
err_release_metadata:
	FUNC12(app, flow_pay);
err_destroy_flow:
	FUNC2(flow_pay->action_data);
	FUNC2(flow_pay->mask_data);
	FUNC2(flow_pay->unmasked_data);
	FUNC2(flow_pay);
err_free_key_ls:
	FUNC2(key_layer);
	return err;
}