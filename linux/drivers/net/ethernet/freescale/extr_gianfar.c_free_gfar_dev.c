
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int num_grps; int ndev; TYPE_1__* gfargrp; } ;
struct TYPE_2__ {int ** irqinfo; } ;


 int GFAR_NUM_IRQS ;
 int free_netdev (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void free_gfar_dev(struct gfar_private *priv)
{
 int i, j;

 for (i = 0; i < priv->num_grps; i++)
  for (j = 0; j < GFAR_NUM_IRQS; j++) {
   kfree(priv->gfargrp[i].irqinfo[j]);
   priv->gfargrp[i].irqinfo[j] = ((void*)0);
  }

 free_netdev(priv->ndev);
}
