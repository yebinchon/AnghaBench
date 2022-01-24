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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct nfp_flower_priv {TYPE_1__ nfp_lag; } ;
struct nfp_fl_lag_group {int group_id; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfp_fl_lag_group* FUNC2 (TYPE_1__*,struct net_device*) ; 

int FUNC3(struct nfp_app *app, struct net_device *master)
{
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_fl_lag_group *group = NULL;
	int group_id = -ENOENT;

	FUNC0(&priv->nfp_lag.lock);
	group = FUNC2(&priv->nfp_lag,
							  master);
	if (group)
		group_id = group->group_id;
	FUNC1(&priv->nfp_lag.lock);

	return group_id;
}