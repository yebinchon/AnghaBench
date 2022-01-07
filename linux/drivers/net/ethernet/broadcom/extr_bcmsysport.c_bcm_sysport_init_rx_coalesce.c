
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dim_cq_moder {int pkts; int usec; } ;
struct TYPE_2__ {int mode; } ;
struct bcm_sysport_net_dim {TYPE_1__ dim; scalar_t__ use_dim; } ;
struct bcm_sysport_priv {int rx_max_coalesced_frames; int rx_coalesce_usecs; struct bcm_sysport_net_dim dim; } ;


 int bcm_sysport_set_rx_coalesce (struct bcm_sysport_priv*,int ,int ) ;
 struct dim_cq_moder net_dim_get_def_rx_moderation (int ) ;

__attribute__((used)) static void bcm_sysport_init_rx_coalesce(struct bcm_sysport_priv *priv)
{
 struct bcm_sysport_net_dim *dim = &priv->dim;
 struct dim_cq_moder moder;
 u32 usecs, pkts;

 usecs = priv->rx_coalesce_usecs;
 pkts = priv->rx_max_coalesced_frames;


 if (dim->use_dim) {
  moder = net_dim_get_def_rx_moderation(dim->dim.mode);
  usecs = moder.usec;
  pkts = moder.pkts;
 }

 bcm_sysport_set_rx_coalesce(priv, usecs, pkts);
}
