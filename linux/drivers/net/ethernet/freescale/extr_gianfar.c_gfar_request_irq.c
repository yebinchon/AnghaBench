
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int num_grps; int * gfargrp; } ;


 int free_grp_irqs (int *) ;
 int register_grp_irqs (int *) ;

__attribute__((used)) static int gfar_request_irq(struct gfar_private *priv)
{
 int err, i, j;

 for (i = 0; i < priv->num_grps; i++) {
  err = register_grp_irqs(&priv->gfargrp[i]);
  if (err) {
   for (j = 0; j < i; j++)
    free_grp_irqs(&priv->gfargrp[j]);
   return err;
  }
 }

 return 0;
}
