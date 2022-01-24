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
struct TYPE_2__ {int batch_ver; int /*<<< orphan*/  lock; } ;
struct nfp_flower_priv {TYPE_1__ nfp_lag; } ;
struct nfp_fl_pre_lag {int /*<<< orphan*/  instance; int /*<<< orphan*/  lag_version; int /*<<< orphan*/  group_id; } ;
struct nfp_fl_lag_group {int /*<<< orphan*/  group_inst; int /*<<< orphan*/  group_id; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int NFP_FL_PRE_LAG_VER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nfp_fl_lag_group* FUNC6 (TYPE_1__*,struct net_device*) ; 

int FUNC7(struct nfp_app *app,
				       struct net_device *master,
				       struct nfp_fl_pre_lag *pre_act,
				       struct netlink_ext_ack *extack)
{
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_fl_lag_group *group = NULL;
	__be32 temp_vers;

	FUNC4(&priv->nfp_lag.lock);
	group = FUNC6(&priv->nfp_lag,
							  master);
	if (!group) {
		FUNC5(&priv->nfp_lag.lock);
		FUNC0(extack, "invalid entry: group does not exist for LAG action");
		return -ENOENT;
	}

	pre_act->group_id = FUNC1(group->group_id);
	temp_vers = FUNC2(priv->nfp_lag.batch_ver <<
				NFP_FL_PRE_LAG_VER_OFF);
	FUNC3(pre_act->lag_version, &temp_vers, 3);
	pre_act->instance = group->group_inst;
	FUNC5(&priv->nfp_lag.lock);

	return 0;
}