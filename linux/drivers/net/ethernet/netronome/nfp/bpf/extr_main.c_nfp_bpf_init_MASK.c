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
struct TYPE_2__ {int max_key_sz; int max_val_sz; } ;
struct nfp_app_bpf {int abi_version; int cmsg_key_sz; int cmsg_val_sz; int /*<<< orphan*/  ccm; int /*<<< orphan*/  maps_neutral; int /*<<< orphan*/  bpf_dev; TYPE_1__ maps; int /*<<< orphan*/  map_list; struct nfp_app* app; } ;
struct nfp_app {int /*<<< orphan*/  ctrl_mtu; struct nfp_app_bpf* priv; } ;

/* Variables and functions */
 int CMSG_MAP_KEY_LW ; 
 int CMSG_MAP_VALUE_LW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nfp_app_bpf*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app_bpf*) ; 
 struct nfp_app_bpf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_app_bpf*) ; 
 int /*<<< orphan*/  nfp_bpf_dev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_app_bpf*) ; 
 int /*<<< orphan*/  nfp_bpf_maps_neutral_params ; 
 int FUNC7 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct nfp_app *app)
{
	struct nfp_app_bpf *bpf;
	int err;

	bpf = FUNC4(sizeof(*bpf), GFP_KERNEL);
	if (!bpf)
		return -ENOMEM;
	bpf->app = app;
	app->priv = bpf;

	FUNC0(&bpf->map_list);

	err = FUNC9(&bpf->ccm, app);
	if (err)
		goto err_free_bpf;

	err = FUNC11(&bpf->maps_neutral, &nfp_bpf_maps_neutral_params);
	if (err)
		goto err_clean_ccm;

	FUNC6(bpf);

	err = FUNC7(app);
	if (err)
		goto err_free_neutral_maps;

	if (bpf->abi_version < 3) {
		bpf->cmsg_key_sz = CMSG_MAP_KEY_LW * 4;
		bpf->cmsg_val_sz = CMSG_MAP_VALUE_LW * 4;
	} else {
		bpf->cmsg_key_sz = bpf->maps.max_key_sz;
		bpf->cmsg_val_sz = bpf->maps.max_val_sz;
		app->ctrl_mtu = FUNC5(bpf);
	}

	bpf->bpf_dev = FUNC2(&nfp_bpf_dev_ops, bpf);
	err = FUNC1(bpf->bpf_dev);
	if (err)
		goto err_free_neutral_maps;

	return 0;

err_free_neutral_maps:
	FUNC10(&bpf->maps_neutral);
err_clean_ccm:
	FUNC8(&bpf->ccm);
err_free_bpf:
	FUNC3(bpf);
	return err;
}