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
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_flower_repr_priv {int /*<<< orphan*/  block_shared; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int /*<<< orphan*/  block; int /*<<< orphan*/ * driver_block_list; int /*<<< orphan*/  block_shared; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ ,struct nfp_repr*,struct nfp_repr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfp_repr*,int /*<<< orphan*/ *) ; 
 struct flow_block_cb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_repr*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct nfp_repr* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  nfp_block_cb_list ; 
 int /*<<< orphan*/  nfp_flower_setup_tc_block_cb ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				     struct flow_block_offload *f)
{
	struct nfp_repr *repr = FUNC9(netdev);
	struct nfp_flower_repr_priv *repr_priv;
	struct flow_block_cb *block_cb;

	if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
		return -EOPNOTSUPP;

	repr_priv = repr->app_priv;
	repr_priv->block_shared = f->block_shared;
	f->driver_block_list = &nfp_block_cb_list;

	switch (f->command) {
	case FLOW_BLOCK_BIND:
		if (FUNC4(nfp_flower_setup_tc_block_cb, repr,
					  &nfp_block_cb_list))
			return -EBUSY;

		block_cb = FUNC3(nfp_flower_setup_tc_block_cb,
					       repr, repr, NULL);
		if (FUNC0(block_cb))
			return FUNC1(block_cb);

		FUNC2(block_cb, f);
		FUNC7(&block_cb->driver_list, &nfp_block_cb_list);
		return 0;
	case FLOW_BLOCK_UNBIND:
		block_cb = FUNC5(f->block,
						nfp_flower_setup_tc_block_cb,
						repr);
		if (!block_cb)
			return -ENOENT;

		FUNC6(block_cb, f);
		FUNC8(&block_cb->driver_list);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}