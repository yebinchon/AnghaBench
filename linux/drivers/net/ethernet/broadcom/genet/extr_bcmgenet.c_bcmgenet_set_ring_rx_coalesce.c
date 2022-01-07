
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ethtool_coalesce {scalar_t__ use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct dim_cq_moder {int pkts; int usec; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ use_dim; TYPE_1__ dim; } ;
struct bcmgenet_rx_ring {TYPE_2__ dim; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int bcmgenet_set_rx_coalesce (struct bcmgenet_rx_ring*,int ,int ) ;
 struct dim_cq_moder net_dim_get_def_rx_moderation (int ) ;

__attribute__((used)) static void bcmgenet_set_ring_rx_coalesce(struct bcmgenet_rx_ring *ring,
       struct ethtool_coalesce *ec)
{
 struct dim_cq_moder moder;
 u32 usecs, pkts;

 ring->rx_coalesce_usecs = ec->rx_coalesce_usecs;
 ring->rx_max_coalesced_frames = ec->rx_max_coalesced_frames;
 usecs = ring->rx_coalesce_usecs;
 pkts = ring->rx_max_coalesced_frames;

 if (ec->use_adaptive_rx_coalesce && !ring->dim.use_dim) {
  moder = net_dim_get_def_rx_moderation(ring->dim.dim.mode);
  usecs = moder.usec;
  pkts = moder.pkts;
 }

 ring->dim.use_dim = ec->use_adaptive_rx_coalesce;
 bcmgenet_set_rx_coalesce(ring, usecs, pkts);
}
