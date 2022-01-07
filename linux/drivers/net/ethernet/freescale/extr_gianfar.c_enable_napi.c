
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int num_grps; TYPE_1__* gfargrp; } ;
struct TYPE_2__ {int napi_tx; int napi_rx; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void enable_napi(struct gfar_private *priv)
{
 int i;

 for (i = 0; i < priv->num_grps; i++) {
  napi_enable(&priv->gfargrp[i].napi_rx);
  napi_enable(&priv->gfargrp[i].napi_tx);
 }
}
