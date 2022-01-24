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
typedef  scalar_t__ u64 ;
struct nfp_pf {int /*<<< orphan*/  rtbl; int /*<<< orphan*/  vf_cfg_bar; int /*<<< orphan*/  mac_stats_bar; int /*<<< orphan*/  eth_tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_q; } ;
struct nfp_flower_priv {int flower_ext_feats; int /*<<< orphan*/  nfp_lag; scalar_t__ pre_tun_rule_cnt; int /*<<< orphan*/  non_repr_priv; int /*<<< orphan*/  indr_block_cb_priv; TYPE_1__ mtu_conf; int /*<<< orphan*/  reify_wait_queue; int /*<<< orphan*/  cmsg_work; int /*<<< orphan*/  cmsg_skbs_low; int /*<<< orphan*/  cmsg_skbs_high; struct nfp_app* app; int /*<<< orphan*/  stats_ring_size; scalar_t__ active_mem_unit; scalar_t__ total_mem_units; } ;
struct nfp_app {struct nfp_flower_priv* priv; int /*<<< orphan*/  cpp; struct nfp_pf* pf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NFP_FLOWER_ALLOWED_VER ; 
 int NFP_FL_FEATS_FLOW_MERGE ; 
 int NFP_FL_FEATS_FLOW_MOD ; 
 int NFP_FL_FEATS_LAG ; 
 int NFP_FL_FEATS_VF_RLIM ; 
 int /*<<< orphan*/  NFP_FL_STAT_ID_MU_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfp_flower_cmsg_process_rx ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_flower_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_app*) ; 
 int FUNC9 (struct nfp_app*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_app*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct nfp_flower_priv*) ; 
 struct nfp_flower_priv* FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct nfp_app *app)
{
	u64 version, features, ctx_count, num_mems;
	const struct nfp_pf *pf = app->pf;
	struct nfp_flower_priv *app_priv;
	int err;

	if (!pf->eth_tbl) {
		FUNC13(app->cpp, "FlowerNIC requires eth table\n");
		return -EINVAL;
	}

	if (!pf->mac_stats_bar) {
		FUNC13(app->cpp, "FlowerNIC requires mac_stats BAR\n");
		return -EINVAL;
	}

	if (!pf->vf_cfg_bar) {
		FUNC13(app->cpp, "FlowerNIC requires vf_cfg BAR\n");
		return -EINVAL;
	}

	version = FUNC11(app->pf->rtbl, "hw_flower_version", &err);
	if (err) {
		FUNC13(app->cpp, "FlowerNIC requires hw_flower_version memory symbol\n");
		return err;
	}

	num_mems = FUNC11(app->pf->rtbl, "CONFIG_FC_HOST_CTX_SPLIT",
				     &err);
	if (err) {
		FUNC13(app->cpp,
			 "FlowerNIC: unsupported host context memory: %d\n",
			 err);
		err = 0;
		num_mems = 1;
	}

	if (!FUNC1(NFP_FL_STAT_ID_MU_NUM, num_mems) || !num_mems) {
		FUNC13(app->cpp,
			 "FlowerNIC: invalid host context memory: %llu\n",
			 num_mems);
		return -EINVAL;
	}

	ctx_count = FUNC11(app->pf->rtbl, "CONFIG_FC_HOST_CTX_COUNT",
				      &err);
	if (err) {
		FUNC13(app->cpp,
			 "FlowerNIC: unsupported host context count: %d\n",
			 err);
		err = 0;
		ctx_count = FUNC0(17);
	}

	/* We need to ensure hardware has enough flower capabilities. */
	if (version != NFP_FLOWER_ALLOWED_VER) {
		FUNC13(app->cpp, "FlowerNIC: unsupported firmware version\n");
		return -EINVAL;
	}

	app_priv = FUNC18(sizeof(struct nfp_flower_priv));
	if (!app_priv)
		return -ENOMEM;

	app_priv->total_mem_units = num_mems;
	app_priv->active_mem_unit = 0;
	app_priv->stats_ring_size = FUNC14(ctx_count);
	app->priv = app_priv;
	app_priv->app = app;
	FUNC15(&app_priv->cmsg_skbs_high);
	FUNC15(&app_priv->cmsg_skbs_low);
	FUNC3(&app_priv->cmsg_work, nfp_flower_cmsg_process_rx);
	FUNC4(&app_priv->reify_wait_queue);

	FUNC4(&app_priv->mtu_conf.wait_q);
	FUNC16(&app_priv->mtu_conf.lock);

	err = FUNC9(app, ctx_count, num_mems);
	if (err)
		goto err_free_app_priv;

	/* Extract the extra features supported by the firmware. */
	features = FUNC11(app->pf->rtbl,
				     "_abi_flower_extra_features", &err);
	if (err)
		app_priv->flower_ext_feats = 0;
	else
		app_priv->flower_ext_feats = features;

	/* Tell the firmware that the driver supports lag. */
	err = FUNC12(app->pf->rtbl,
				 "_abi_flower_balance_sync_enable", 1);
	if (!err) {
		app_priv->flower_ext_feats |= NFP_FL_FEATS_LAG;
		FUNC7(&app_priv->nfp_lag);
	} else if (err == -ENOENT) {
		FUNC13(app->cpp, "LAG not supported by FW.\n");
	} else {
		goto err_cleanup_metadata;
	}

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MOD) {
		/* Tell the firmware that the driver supports flow merging. */
		err = FUNC12(app->pf->rtbl,
					 "_abi_flower_merge_hint_enable", 1);
		if (!err) {
			app_priv->flower_ext_feats |= NFP_FL_FEATS_FLOW_MERGE;
			FUNC5(app_priv);
		} else if (err == -ENOENT) {
			FUNC13(app->cpp, "Flow merge not supported by FW.\n");
		} else {
			goto err_lag_clean;
		}
	} else {
		FUNC13(app->cpp, "Flow mod/merge not supported by FW.\n");
	}

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_VF_RLIM)
		FUNC10(app);

	FUNC2(&app_priv->indr_block_cb_priv);
	FUNC2(&app_priv->non_repr_priv);
	app_priv->pre_tun_rule_cnt = 0;

	return 0;

err_lag_clean:
	if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG)
		FUNC6(&app_priv->nfp_lag);
err_cleanup_metadata:
	FUNC8(app);
err_free_app_priv:
	FUNC17(app->priv);
	return err;
}