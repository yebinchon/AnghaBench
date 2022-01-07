
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct nfp_flower_priv {TYPE_1__ nfp_lag; } ;
struct nfp_fl_lag_group {int group_id; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 int ENOENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfp_fl_lag_group* nfp_fl_lag_find_group_for_master_with_lag (TYPE_1__*,struct net_device*) ;

int nfp_flower_lag_get_output_id(struct nfp_app *app, struct net_device *master)
{
 struct nfp_flower_priv *priv = app->priv;
 struct nfp_fl_lag_group *group = ((void*)0);
 int group_id = -ENOENT;

 mutex_lock(&priv->nfp_lag.lock);
 group = nfp_fl_lag_find_group_for_master_with_lag(&priv->nfp_lag,
         master);
 if (group)
  group_id = group->group_id;
 mutex_unlock(&priv->nfp_lag.lock);

 return group_id;
}
