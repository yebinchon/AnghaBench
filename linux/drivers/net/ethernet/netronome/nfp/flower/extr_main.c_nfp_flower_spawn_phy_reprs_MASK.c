#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nfp_reprs {int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_port {int dummy; } ;
struct nfp_flower_repr_priv {struct nfp_repr* nfp_repr; } ;
struct nfp_flower_priv {TYPE_3__* nn; int /*<<< orphan*/  reify_replies; } ;
struct nfp_eth_table {unsigned int count; TYPE_4__* ports; scalar_t__ max_index; } ;
struct nfp_app {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  cpp; TYPE_5__* pf; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_11__ {struct nfp_eth_table* eth_tbl; } ;
struct TYPE_10__ {unsigned int index; int /*<<< orphan*/  base; int /*<<< orphan*/  nbi; } ;
struct TYPE_8__ {int /*<<< orphan*/  netdev; } ;
struct TYPE_9__ {TYPE_2__ dp; TYPE_1__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfp_port*) ; 
 int /*<<< orphan*/  NFP_PORT_PHYS_PORT ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_PHYS_PORT ; 
 int FUNC1 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_flower_repr_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct nfp_flower_repr_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct nfp_repr* FUNC8 (struct net_device*) ; 
 struct nfp_reprs* FUNC9 (struct nfp_app*,int /*<<< orphan*/ ,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC12 (struct nfp_app*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int FUNC14 (struct nfp_app*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct nfp_app*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,struct net_device*,struct nfp_port*) ; 
 struct nfp_port* FUNC18 (struct nfp_app*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfp_port*) ; 
 int FUNC20 (TYPE_5__*,struct nfp_app*,struct nfp_port*,unsigned int) ; 
 struct net_device* FUNC21 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int FUNC23 (struct nfp_app*,struct net_device*,int /*<<< orphan*/ ,struct nfp_port*,int /*<<< orphan*/ ) ; 
 struct nfp_reprs* FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct nfp_app*,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC27(struct nfp_app *app, struct nfp_flower_priv *priv)
{
	struct nfp_eth_table *eth_tbl = app->pf->eth_tbl;
	atomic_t *replies = &priv->reify_replies;
	struct nfp_flower_repr_priv *repr_priv;
	struct nfp_repr *nfp_repr;
	struct sk_buff *ctrl_skb;
	struct nfp_reprs *reprs;
	int err, reify_cnt;
	unsigned int i;

	ctrl_skb = FUNC12(app, eth_tbl->count);
	if (!ctrl_skb)
		return -ENOMEM;

	reprs = FUNC24(eth_tbl->max_index + 1);
	if (!reprs) {
		err = -ENOMEM;
		goto err_free_ctrl_skb;
	}

	for (i = 0; i < eth_tbl->count; i++) {
		unsigned int phys_port = eth_tbl->ports[i].index;
		struct net_device *repr;
		struct nfp_port *port;
		u32 cmsg_port_id;

		repr = FUNC21(app);
		if (!repr) {
			err = -ENOMEM;
			goto err_reprs_clean;
		}

		repr_priv = FUNC7(sizeof(*repr_priv), GFP_KERNEL);
		if (!repr_priv) {
			err = -ENOMEM;
			FUNC22(repr);
			goto err_reprs_clean;
		}

		nfp_repr = FUNC8(repr);
		nfp_repr->app_priv = repr_priv;
		repr_priv->nfp_repr = nfp_repr;

		port = FUNC18(app, NFP_PORT_PHYS_PORT, repr);
		if (FUNC0(port)) {
			err = FUNC1(port);
			FUNC5(repr_priv);
			FUNC22(repr);
			goto err_reprs_clean;
		}
		err = FUNC20(app->pf, app, port, i);
		if (err) {
			FUNC5(repr_priv);
			FUNC19(port);
			FUNC22(repr);
			goto err_reprs_clean;
		}

		FUNC3(repr, &priv->nn->pdev->dev);
		FUNC17(app->pf, repr, port);

		cmsg_port_id = FUNC13(phys_port);
		err = FUNC23(app, repr,
				    cmsg_port_id, port, priv->nn->dp.netdev);
		if (err) {
			FUNC5(repr_priv);
			FUNC19(port);
			FUNC22(repr);
			goto err_reprs_clean;
		}

		FUNC11(ctrl_skb, i,
					     eth_tbl->ports[i].nbi,
					     eth_tbl->ports[i].base,
					     phys_port);

		FUNC2(reprs->reprs[phys_port], repr);
		FUNC16(app->cpp, "Phys Port %d Representor(%s) created\n",
			 phys_port, repr->name);
	}

	FUNC9(app, NFP_REPR_TYPE_PHYS_PORT, reprs);

	/* The REIFY/MAC_REPR control messages should be sent after the MAC
	 * representors are registered using nfp_app_reprs_set().  This is
	 * because the firmware may respond with control messages for the
	 * MAC representors, f.e. to provide the driver with information
	 * about their state, and without registration the driver will drop
	 * any such messages.
	 */
	FUNC4(replies, 0);
	reify_cnt = FUNC14(app, NFP_REPR_TYPE_PHYS_PORT, true);
	if (reify_cnt < 0) {
		err = reify_cnt;
		FUNC26(app->cpp, "Failed to notify firmware about repr creation\n");
		goto err_reprs_remove;
	}

	err = FUNC15(app, replies, reify_cnt);
	if (err)
		goto err_reprs_remove;

	FUNC10(app->ctrl, ctrl_skb);

	return 0;
err_reprs_remove:
	reprs = FUNC9(app, NFP_REPR_TYPE_PHYS_PORT, NULL);
err_reprs_clean:
	FUNC25(app, reprs);
err_free_ctrl_skb:
	FUNC6(ctrl_skb);
	return err;
}