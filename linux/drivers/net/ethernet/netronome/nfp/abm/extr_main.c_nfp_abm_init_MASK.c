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
struct nfp_reprs {int dummy; } ;
struct nfp_pf {scalar_t__ max_data_vnics; int /*<<< orphan*/  mac_stats_bar; TYPE_1__* eth_tbl; int /*<<< orphan*/  cpp; } ;
struct nfp_app {struct nfp_abm* priv; int /*<<< orphan*/ * reprs; int /*<<< orphan*/  cpp; struct nfp_pf* pf; } ;
struct nfp_abm {int /*<<< orphan*/  threshold_undef; void* thresholds; void* actions; int /*<<< orphan*/  num_thresholds; int /*<<< orphan*/  num_bands; struct nfp_app* app; } ;
struct TYPE_2__ {scalar_t__ count; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFP_NET_MAX_RX_RINGS ; 
 size_t NFP_REPR_TYPE_PF ; 
 size_t NFP_REPR_TYPE_PHYS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_abm*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 struct nfp_abm* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfp_abm*) ; 
 int FUNC9 (struct nfp_abm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 struct nfp_reprs* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_app*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct nfp_app *app)
{
	struct nfp_pf *pf = app->pf;
	struct nfp_reprs *reprs;
	struct nfp_abm *abm;
	int err;

	if (!pf->eth_tbl) {
		FUNC10(pf->cpp, "ABM NIC requires ETH table\n");
		return -EINVAL;
	}
	if (pf->max_data_vnics != pf->eth_tbl->count) {
		FUNC10(pf->cpp, "ETH entries don't match vNICs (%d vs %d)\n",
			pf->max_data_vnics, pf->eth_tbl->count);
		return -EINVAL;
	}
	if (!pf->mac_stats_bar) {
		FUNC13(app->cpp, "ABM NIC requires mac_stats symbol\n");
		return -EINVAL;
	}

	abm = FUNC7(sizeof(*abm), GFP_KERNEL);
	if (!abm)
		return -ENOMEM;
	app->priv = abm;
	abm->app = app;

	err = FUNC8(abm);
	if (err)
		goto err_free_abm;

	err = -ENOMEM;
	abm->num_thresholds = FUNC1(abm->num_bands, NFP_NET_MAX_RX_RINGS);
	abm->threshold_undef = FUNC3(abm->num_thresholds, GFP_KERNEL);
	if (!abm->threshold_undef)
		goto err_free_abm;

	abm->thresholds = FUNC5(abm->num_thresholds,
				   sizeof(*abm->thresholds), GFP_KERNEL);
	if (!abm->thresholds)
		goto err_free_thresh_umap;

	abm->actions = FUNC5(abm->num_thresholds, sizeof(*abm->actions),
				GFP_KERNEL);
	if (!abm->actions)
		goto err_free_thresh;

	/* We start in legacy mode, make sure advanced queuing is disabled */
	err = FUNC9(abm);
	if (err)
		goto err_free_act;

	err = -ENOMEM;
	reprs = FUNC11(pf->max_data_vnics);
	if (!reprs)
		goto err_free_act;
	FUNC0(app->reprs[NFP_REPR_TYPE_PHYS_PORT], reprs);

	reprs = FUNC11(pf->max_data_vnics);
	if (!reprs)
		goto err_free_phys;
	FUNC0(app->reprs[NFP_REPR_TYPE_PF], reprs);

	return 0;

err_free_phys:
	FUNC12(app, NFP_REPR_TYPE_PHYS_PORT);
err_free_act:
	FUNC6(abm->actions);
err_free_thresh:
	FUNC6(abm->thresholds);
err_free_thresh_umap:
	FUNC2(abm->threshold_undef);
err_free_abm:
	FUNC4(abm);
	app->priv = NULL;
	return err;
}