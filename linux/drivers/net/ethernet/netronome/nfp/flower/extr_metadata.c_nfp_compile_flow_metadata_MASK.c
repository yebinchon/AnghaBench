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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct nfp_flower_priv {int /*<<< orphan*/  stats_ctx_table; TYPE_1__* stats; int /*<<< orphan*/  flower_version; } ;
struct nfp_fl_stats_ctx_to_flow {size_t stats_cxt; int /*<<< orphan*/  ht_node; struct nfp_fl_payload* flow; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask_len; void* flow_version; int /*<<< orphan*/  flags; void* host_cookie; int /*<<< orphan*/  host_ctx_id; } ;
struct nfp_fl_payload {TYPE_2__ meta; int /*<<< orphan*/  mask_data; scalar_t__* unmasked_data; struct net_device* ingress_dev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct TYPE_3__ {int /*<<< orphan*/  used; scalar_t__ bytes; scalar_t__ pkts; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NFP_FL_MASK_ID_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_fl_stats_ctx_to_flow*) ; 
 struct nfp_fl_stats_ctx_to_flow* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct nfp_fl_payload* FUNC8 (struct nfp_app*,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC9 (struct nfp_app*,size_t*) ; 
 scalar_t__ FUNC10 (struct nfp_app*,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_ctx_table_params ; 

int FUNC13(struct nfp_app *app,
			      struct flow_cls_offload *flow,
			      struct nfp_fl_payload *nfp_flow,
			      struct net_device *netdev,
			      struct netlink_ext_ack *extack)
{
	struct nfp_fl_stats_ctx_to_flow *ctx_entry;
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_fl_payload *check_entry;
	u8 new_mask_id;
	u32 stats_cxt;
	int err;

	err = FUNC9(app, &stats_cxt);
	if (err) {
		FUNC0(extack, "invalid entry: cannot allocate new stats context");
		return err;
	}

	nfp_flow->meta.host_ctx_id = FUNC2(stats_cxt);
	nfp_flow->meta.host_cookie = FUNC3(flow->cookie);
	nfp_flow->ingress_dev = netdev;

	ctx_entry = FUNC5(sizeof(*ctx_entry), GFP_KERNEL);
	if (!ctx_entry) {
		err = -ENOMEM;
		goto err_release_stats;
	}

	ctx_entry->stats_cxt = stats_cxt;
	ctx_entry->flow = nfp_flow;

	if (FUNC11(&priv->stats_ctx_table, &ctx_entry->ht_node,
				   stats_ctx_table_params)) {
		err = -ENOMEM;
		goto err_free_ctx_entry;
	}

	new_mask_id = 0;
	if (!FUNC6(app, nfp_flow->mask_data,
				nfp_flow->meta.mask_len,
				&nfp_flow->meta.flags, &new_mask_id)) {
		FUNC0(extack, "invalid entry: cannot allocate a new mask id");
		if (FUNC10(app, stats_cxt)) {
			FUNC0(extack, "invalid entry: cannot release stats context");
			err = -EINVAL;
			goto err_remove_rhash;
		}
		err = -ENOENT;
		goto err_remove_rhash;
	}

	nfp_flow->meta.flow_version = FUNC3(priv->flower_version);
	priv->flower_version++;

	/* Update flow payload with mask ids. */
	nfp_flow->unmasked_data[NFP_FL_MASK_ID_LOCATION] = new_mask_id;
	priv->stats[stats_cxt].pkts = 0;
	priv->stats[stats_cxt].bytes = 0;
	priv->stats[stats_cxt].used = jiffies;

	check_entry = FUNC8(app, flow->cookie, netdev);
	if (check_entry) {
		FUNC0(extack, "invalid entry: cannot offload duplicate flow entry");
		if (FUNC10(app, stats_cxt)) {
			FUNC0(extack, "invalid entry: cannot release stats context");
			err = -EINVAL;
			goto err_remove_mask;
		}

		if (!FUNC7(app, nfp_flow->mask_data,
					   nfp_flow->meta.mask_len,
					   NULL, &new_mask_id)) {
			FUNC0(extack, "invalid entry: cannot release mask id");
			err = -EINVAL;
			goto err_remove_mask;
		}

		err = -EEXIST;
		goto err_remove_mask;
	}

	return 0;

err_remove_mask:
	FUNC7(app, nfp_flow->mask_data, nfp_flow->meta.mask_len,
			      NULL, &new_mask_id);
err_remove_rhash:
	FUNC1(FUNC12(&priv->stats_ctx_table,
					    &ctx_entry->ht_node,
					    stats_ctx_table_params));
err_free_ctx_entry:
	FUNC4(ctx_entry);
err_release_stats:
	FUNC10(app, stats_cxt);

	return err;
}