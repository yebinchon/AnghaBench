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
struct nfp_flower_priv {int /*<<< orphan*/  flow_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask_len; int /*<<< orphan*/  key_len; } ;
struct nfp_fl_payload {unsigned long tc_flower_cookie; int in_hw; struct nfp_fl_payload* unmasked_data; struct nfp_fl_payload* mask_data; struct nfp_fl_payload* action_data; int /*<<< orphan*/  fl_node; int /*<<< orphan*/  ingress_dev; TYPE_2__ meta; } ;
struct nfp_fl_key_ls {int /*<<< orphan*/  key_size; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {unsigned long cookie; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_FLOW_MOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_fl_payload*,struct nfp_fl_payload*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nfp_app*,struct flow_cls_offload*,struct nfp_fl_payload*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nfp_fl_payload* FUNC5 (struct nfp_fl_key_ls*) ; 
 int FUNC6 (struct nfp_fl_payload*,struct nfp_fl_payload*) ; 
 scalar_t__ FUNC7 (struct nfp_fl_payload*) ; 
 int FUNC8 (struct nfp_fl_payload*,struct nfp_fl_payload*) ; 
 int FUNC9 (struct nfp_fl_payload*,struct nfp_fl_payload*,struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  nfp_flower_table_params ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_fl_payload*,struct nfp_fl_payload*) ; 
 int FUNC11 (struct nfp_app*,struct nfp_fl_payload*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_app*,struct nfp_fl_payload*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC15(struct nfp_app *app,
				     struct nfp_fl_payload *sub_flow1,
				     struct nfp_fl_payload *sub_flow2)
{
	struct flow_cls_offload merge_tc_off;
	struct nfp_flower_priv *priv = app->priv;
	struct netlink_ext_ack *extack = NULL;
	struct nfp_fl_payload *merge_flow;
	struct nfp_fl_key_ls merge_key_ls;
	int err;

	FUNC0();

	extack = merge_tc_off.common.extack;
	if (sub_flow1 == sub_flow2 ||
	    FUNC7(sub_flow1) ||
	    FUNC7(sub_flow2))
		return -EINVAL;

	err = FUNC6(sub_flow1, sub_flow2);
	if (err)
		return err;

	merge_key_ls.key_size = sub_flow1->meta.key_len;

	merge_flow = FUNC5(&merge_key_ls);
	if (!merge_flow)
		return -ENOMEM;

	merge_flow->tc_flower_cookie = (unsigned long)merge_flow;
	merge_flow->ingress_dev = sub_flow1->ingress_dev;

	FUNC3(merge_flow->unmasked_data, sub_flow1->unmasked_data,
	       sub_flow1->meta.key_len);
	FUNC3(merge_flow->mask_data, sub_flow1->mask_data,
	       sub_flow1->meta.mask_len);

	err = FUNC9(sub_flow1, sub_flow2, merge_flow);
	if (err)
		goto err_destroy_merge_flow;

	err = FUNC8(merge_flow, sub_flow1);
	if (err)
		goto err_destroy_merge_flow;

	err = FUNC8(merge_flow, sub_flow2);
	if (err)
		goto err_unlink_sub_flow1;

	merge_tc_off.cookie = merge_flow->tc_flower_cookie;
	err = FUNC4(app, &merge_tc_off, merge_flow,
					merge_flow->ingress_dev, extack);
	if (err)
		goto err_unlink_sub_flow2;

	err = FUNC13(&priv->flow_table, &merge_flow->fl_node,
				     nfp_flower_table_params);
	if (err)
		goto err_release_metadata;

	err = FUNC11(app, merge_flow,
				   NFP_FLOWER_CMSG_TYPE_FLOW_MOD);
	if (err)
		goto err_remove_rhash;

	merge_flow->in_hw = true;
	sub_flow1->in_hw = false;

	return 0;

err_remove_rhash:
	FUNC1(FUNC14(&priv->flow_table,
					    &merge_flow->fl_node,
					    nfp_flower_table_params));
err_release_metadata:
	FUNC12(app, merge_flow);
err_unlink_sub_flow2:
	FUNC10(merge_flow, sub_flow2);
err_unlink_sub_flow1:
	FUNC10(merge_flow, sub_flow1);
err_destroy_merge_flow:
	FUNC2(merge_flow->action_data);
	FUNC2(merge_flow->mask_data);
	FUNC2(merge_flow->unmasked_data);
	FUNC2(merge_flow);
	return err;
}