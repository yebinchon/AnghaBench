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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_reprs {int num_reprs; int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  netdev_port_id; } ;
struct nfp_flower_repr_priv {TYPE_1__ qos_table; } ;
struct nfp_flower_priv {TYPE_2__* app; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * reprs; } ;

/* Variables and functions */
 size_t NFP_REPR_TYPE_VF ; 
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_flower_priv*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct nfp_flower_priv *fl_priv)
{
	struct nfp_reprs *repr_set;
	int i;

	FUNC3();
	repr_set = FUNC2(fl_priv->app->reprs[NFP_REPR_TYPE_VF]);
	if (!repr_set)
		goto exit_unlock_rcu;

	for (i = 0; i < repr_set->num_reprs; i++) {
		struct net_device *netdev;

		netdev = FUNC2(repr_set->reprs[i]);
		if (netdev) {
			struct nfp_repr *priv = FUNC0(netdev);
			struct nfp_flower_repr_priv *repr_priv;
			u32 netdev_port_id;

			repr_priv = priv->app_priv;
			netdev_port_id = repr_priv->qos_table.netdev_port_id;
			if (!netdev_port_id)
				continue;

			FUNC1(fl_priv, netdev_port_id);
		}
	}

exit_unlock_rcu:
	FUNC4();
}