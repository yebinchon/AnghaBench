
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int qos_stats_work; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int cancel_delayed_work_sync (int *) ;

void nfp_flower_qos_cleanup(struct nfp_app *app)
{
 struct nfp_flower_priv *fl_priv = app->priv;

 cancel_delayed_work_sync(&fl_priv->qos_stats_work);
}
