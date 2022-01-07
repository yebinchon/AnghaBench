
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {TYPE_1__* gfargrp; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int MAXGROUPS ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void unmap_group_regs(struct gfar_private *priv)
{
 int i;

 for (i = 0; i < MAXGROUPS; i++)
  if (priv->gfargrp[i].regs)
   iounmap(priv->gfargrp[i].regs);
}
