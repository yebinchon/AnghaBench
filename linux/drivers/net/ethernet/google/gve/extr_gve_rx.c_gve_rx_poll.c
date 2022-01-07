
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gve_rx_ring {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct gve_notify_block {TYPE_2__ napi; struct gve_rx_ring* rx; } ;
typedef int netdev_features_t ;
struct TYPE_3__ {int features; } ;


 int INT_MAX ;
 int gve_clean_rx_done (struct gve_rx_ring*,int,int ) ;
 int gve_rx_work_pending (struct gve_rx_ring*) ;

bool gve_rx_poll(struct gve_notify_block *block, int budget)
{
 struct gve_rx_ring *rx = block->rx;
 netdev_features_t feat;
 bool repoll = 0;

 feat = block->napi.dev->features;


 if (budget == 0)
  budget = INT_MAX;

 if (budget > 0)
  repoll |= gve_clean_rx_done(rx, budget, feat);
 else
  repoll |= gve_rx_work_pending(rx);
 return repoll;
}
