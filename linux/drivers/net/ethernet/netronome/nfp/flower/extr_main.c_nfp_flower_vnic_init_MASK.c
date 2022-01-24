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
struct nfp_net {int dummy; } ;
struct nfp_flower_priv {struct nfp_net* nn; } ;
struct nfp_app {TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
struct TYPE_2__ {int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_PF ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_PHYS_PORT ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_VF ; 
 int FUNC0 (struct nfp_app*,struct nfp_flower_priv*) ; 
 int FUNC1 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nfp_app *app, struct nfp_net *nn)
{
	struct nfp_flower_priv *priv = app->priv;
	int err;

	priv->nn = nn;

	err = FUNC0(app, app->priv);
	if (err)
		goto err_clear_nn;

	err = FUNC1(app,
					  NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF,
					  NFP_REPR_TYPE_PF, 1);
	if (err)
		goto err_destroy_reprs_phy;

	if (app->pf->num_vfs) {
		err = FUNC1(app,
						  NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF,
						  NFP_REPR_TYPE_VF,
						  app->pf->num_vfs);
		if (err)
			goto err_destroy_reprs_pf;
	}

	return 0;

err_destroy_reprs_pf:
	FUNC2(app, NFP_REPR_TYPE_PF);
err_destroy_reprs_phy:
	FUNC2(app, NFP_REPR_TYPE_PHYS_PORT);
err_clear_nn:
	priv->nn = NULL;
	return err;
}