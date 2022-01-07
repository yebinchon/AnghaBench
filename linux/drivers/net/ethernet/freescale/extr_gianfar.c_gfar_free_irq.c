
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int device_flags; int num_grps; int * gfargrp; } ;
struct TYPE_2__ {int irq; } ;


 int FSL_GIANFAR_DEV_HAS_MULTI_INTR ;
 int TX ;
 int free_grp_irqs (int *) ;
 int free_irq (int ,int *) ;
 TYPE_1__* gfar_irq (int *,int ) ;

__attribute__((used)) static void gfar_free_irq(struct gfar_private *priv)
{
 int i;


 if (priv->device_flags & FSL_GIANFAR_DEV_HAS_MULTI_INTR) {
  for (i = 0; i < priv->num_grps; i++)
   free_grp_irqs(&priv->gfargrp[i]);
 } else {
  for (i = 0; i < priv->num_grps; i++)
   free_irq(gfar_irq(&priv->gfargrp[i], TX)->irq,
     &priv->gfargrp[i]);
 }
}
