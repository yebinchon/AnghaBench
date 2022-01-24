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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_reprs {int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_port {int pf_id; int vf_id; scalar_t__ vnic; } ;
struct nfp_flower_repr_priv {struct nfp_repr* nfp_repr; } ;
struct nfp_flower_priv {TYPE_3__* nn; int /*<<< orphan*/  reify_replies; } ;
struct nfp_app {int /*<<< orphan*/  cpp; TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
typedef  enum nfp_port_type { ____Placeholder_nfp_port_type } nfp_port_type ;
typedef  enum nfp_flower_cmsg_port_vnic_type { ____Placeholder_nfp_flower_cmsg_port_vnic_type } nfp_flower_cmsg_port_vnic_type ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_5__ {int /*<<< orphan*/  netdev; scalar_t__ ctrl_bar; } ;
struct TYPE_6__ {TYPE_2__ dp; } ;
struct TYPE_4__ {scalar_t__ vf_cfg_mem; int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfp_port*) ; 
 int NFP_NET_CFG_BAR_SZ ; 
 int NFP_PORT_PF_PORT ; 
 int NFP_PORT_VF_PORT ; 
 int NFP_REPR_TYPE_PF ; 
 int FUNC1 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_flower_repr_priv*) ; 
 struct nfp_flower_repr_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct nfp_repr* FUNC8 (struct net_device*) ; 
 struct nfp_reprs* FUNC9 (struct nfp_app*,int,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const) ; 
 int FUNC12 (struct nfp_app*,int,int) ; 
 int FUNC13 (struct nfp_app*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 struct nfp_port* FUNC15 (struct nfp_app*,int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfp_port*) ; 
 struct net_device* FUNC17 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int FUNC19 (struct nfp_app*,struct net_device*,int /*<<< orphan*/ ,struct nfp_port*,int /*<<< orphan*/ ) ; 
 struct nfp_reprs* FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct nfp_app*,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC23(struct nfp_app *app,
			    enum nfp_flower_cmsg_port_vnic_type vnic_type,
			    enum nfp_repr_type repr_type, unsigned int cnt)
{
	u8 nfp_pcie = FUNC10(app->pf->cpp);
	struct nfp_flower_priv *priv = app->priv;
	atomic_t *replies = &priv->reify_replies;
	struct nfp_flower_repr_priv *repr_priv;
	enum nfp_port_type port_type;
	struct nfp_repr *nfp_repr;
	struct nfp_reprs *reprs;
	int i, err, reify_cnt;
	const u8 queue = 0;

	port_type = repr_type == NFP_REPR_TYPE_PF ? NFP_PORT_PF_PORT :
						    NFP_PORT_VF_PORT;

	reprs = FUNC20(cnt);
	if (!reprs)
		return -ENOMEM;

	for (i = 0; i < cnt; i++) {
		struct net_device *repr;
		struct nfp_port *port;
		u32 port_id;

		repr = FUNC17(app);
		if (!repr) {
			err = -ENOMEM;
			goto err_reprs_clean;
		}

		repr_priv = FUNC7(sizeof(*repr_priv), GFP_KERNEL);
		if (!repr_priv) {
			err = -ENOMEM;
			FUNC18(repr);
			goto err_reprs_clean;
		}

		nfp_repr = FUNC8(repr);
		nfp_repr->app_priv = repr_priv;
		repr_priv->nfp_repr = nfp_repr;

		/* For now we only support 1 PF */
		FUNC3(repr_type == NFP_REPR_TYPE_PF && i);

		port = FUNC15(app, port_type, repr);
		if (FUNC0(port)) {
			err = FUNC1(port);
			FUNC6(repr_priv);
			FUNC18(repr);
			goto err_reprs_clean;
		}
		if (repr_type == NFP_REPR_TYPE_PF) {
			port->pf_id = i;
			port->vnic = priv->nn->dp.ctrl_bar;
		} else {
			port->pf_id = 0;
			port->vf_id = i;
			port->vnic =
				app->pf->vf_cfg_mem + i * NFP_NET_CFG_BAR_SZ;
		}

		FUNC5(repr);

		port_id = FUNC11(nfp_pcie, vnic_type,
						    i, queue);
		err = FUNC19(app, repr,
				    port_id, port, priv->nn->dp.netdev);
		if (err) {
			FUNC6(repr_priv);
			FUNC16(port);
			FUNC18(repr);
			goto err_reprs_clean;
		}

		FUNC2(reprs->reprs[i], repr);
		FUNC14(app->cpp, "%s%d Representor(%s) created\n",
			 repr_type == NFP_REPR_TYPE_PF ? "PF" : "VF", i,
			 repr->name);
	}

	FUNC9(app, repr_type, reprs);

	FUNC4(replies, 0);
	reify_cnt = FUNC12(app, repr_type, true);
	if (reify_cnt < 0) {
		err = reify_cnt;
		FUNC22(app->cpp, "Failed to notify firmware about repr creation\n");
		goto err_reprs_remove;
	}

	err = FUNC13(app, replies, reify_cnt);
	if (err)
		goto err_reprs_remove;

	return 0;
err_reprs_remove:
	reprs = FUNC9(app, repr_type, NULL);
err_reprs_clean:
	FUNC21(app, reprs);
	return err;
}