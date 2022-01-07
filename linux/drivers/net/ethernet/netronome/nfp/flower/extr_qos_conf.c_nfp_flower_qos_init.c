
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int qos_stats_work; int qos_stats_lock; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int INIT_DELAYED_WORK (int *,int *) ;
 int spin_lock_init (int *) ;
 int update_stats_cache ;

void nfp_flower_qos_init(struct nfp_app *app)
{
 struct nfp_flower_priv *fl_priv = app->priv;

 spin_lock_init(&fl_priv->qos_stats_lock);
 INIT_DELAYED_WORK(&fl_priv->qos_stats_work, &update_stats_cache);
}
