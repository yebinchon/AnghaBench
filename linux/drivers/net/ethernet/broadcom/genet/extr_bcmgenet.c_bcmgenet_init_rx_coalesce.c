
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dim_cq_moder {int pkts; int usec; } ;
struct TYPE_2__ {int mode; } ;
struct bcmgenet_net_dim {TYPE_1__ dim; scalar_t__ use_dim; } ;
struct bcmgenet_rx_ring {int rx_max_coalesced_frames; int rx_coalesce_usecs; struct bcmgenet_net_dim dim; } ;


 int bcmgenet_set_rx_coalesce (struct bcmgenet_rx_ring*,int ,int ) ;
 struct dim_cq_moder net_dim_get_def_rx_moderation (int ) ;

__attribute__((used)) static void bcmgenet_init_rx_coalesce(struct bcmgenet_rx_ring *ring)
{
 struct bcmgenet_net_dim *dim = &ring->dim;
 struct dim_cq_moder moder;
 u32 usecs, pkts;

 usecs = ring->rx_coalesce_usecs;
 pkts = ring->rx_max_coalesced_frames;


 if (dim->use_dim) {
  moder = net_dim_get_def_rx_moderation(dim->dim.mode);
  usecs = moder.usec;
  pkts = moder.pkts;
 }

 bcmgenet_set_rx_coalesce(ring, usecs, pkts);
}
