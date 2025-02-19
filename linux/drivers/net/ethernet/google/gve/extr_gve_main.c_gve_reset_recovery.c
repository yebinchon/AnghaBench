
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* pdev; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int gve_init_priv (struct gve_priv*,int) ;
 int gve_open (int ) ;
 int gve_turndown (struct gve_priv*) ;

__attribute__((used)) static int gve_reset_recovery(struct gve_priv *priv, bool was_up)
{
 int err;

 err = gve_init_priv(priv, 1);
 if (err)
  goto err;
 if (was_up) {
  err = gve_open(priv->dev);
  if (err)
   goto err;
 }
 return 0;
err:
 dev_err(&priv->pdev->dev, "Reset failed! !!! DISABLING ALL QUEUES !!!\n");
 gve_turndown(priv);
 return err;
}
