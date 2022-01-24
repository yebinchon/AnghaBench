#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfp_flower_priv {int /*<<< orphan*/  indr_block_cb_priv; } ;
struct nfp_flower_indr_block_cb_priv {int /*<<< orphan*/  list; struct nfp_app* app; struct net_device* netdev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int /*<<< orphan*/  block; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ; 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ ,struct nfp_flower_indr_block_cb_priv*,struct nfp_flower_indr_block_cb_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfp_flower_indr_block_cb_priv*,int /*<<< orphan*/ *) ; 
 struct flow_block_cb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_flower_indr_block_cb_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_flower_indr_block_cb_priv*) ; 
 struct nfp_flower_indr_block_cb_priv* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfp_block_cb_list ; 
 struct nfp_flower_indr_block_cb_priv* FUNC12 (struct nfp_app*,struct net_device*) ; 
 scalar_t__ FUNC13 (struct nfp_app*,struct net_device*) ; 
 int /*<<< orphan*/  nfp_flower_setup_indr_block_cb ; 
 int /*<<< orphan*/  nfp_flower_setup_indr_tc_release ; 

__attribute__((used)) static int
FUNC14(struct net_device *netdev, struct nfp_app *app,
			       struct flow_block_offload *f)
{
	struct nfp_flower_indr_block_cb_priv *cb_priv;
	struct nfp_flower_priv *priv = app->priv;
	struct flow_block_cb *block_cb;

	if ((f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS &&
	     !FUNC13(app, netdev)) ||
	    (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS &&
	     FUNC13(app, netdev)))
		return -EOPNOTSUPP;

	switch (f->command) {
	case FLOW_BLOCK_BIND:
		cb_priv = FUNC12(app, netdev);
		if (cb_priv &&
		    FUNC4(nfp_flower_setup_indr_block_cb,
					  cb_priv,
					  &nfp_block_cb_list))
			return -EBUSY;

		cb_priv = FUNC8(sizeof(*cb_priv), GFP_KERNEL);
		if (!cb_priv)
			return -ENOMEM;

		cb_priv->netdev = netdev;
		cb_priv->app = app;
		FUNC9(&cb_priv->list, &priv->indr_block_cb_priv);

		block_cb = FUNC3(nfp_flower_setup_indr_block_cb,
					       cb_priv, cb_priv,
					       nfp_flower_setup_indr_tc_release);
		if (FUNC0(block_cb)) {
			FUNC11(&cb_priv->list);
			FUNC7(cb_priv);
			return FUNC1(block_cb);
		}

		FUNC2(block_cb, f);
		FUNC10(&block_cb->driver_list, &nfp_block_cb_list);
		return 0;
	case FLOW_BLOCK_UNBIND:
		cb_priv = FUNC12(app, netdev);
		if (!cb_priv)
			return -ENOENT;

		block_cb = FUNC5(f->block,
						nfp_flower_setup_indr_block_cb,
						cb_priv);
		if (!block_cb)
			return -ENOENT;

		FUNC6(block_cb, f);
		FUNC11(&block_cb->driver_list);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}