
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int service_task; int gve_wq; } ;


 int gve_set_do_reset (struct gve_priv*) ;
 int queue_work (int ,int *) ;

void gve_schedule_reset(struct gve_priv *priv)
{
 gve_set_do_reset(priv);
 queue_work(priv->gve_wq, &priv->service_task);
}
