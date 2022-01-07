
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tx_stats; int * rx_stats; } ;
struct nicvf {TYPE_1__ bgx_stats; } ;
struct bgx_stats_msg {size_t idx; int stats; scalar_t__ rx; } ;



__attribute__((used)) static void nicvf_read_bgx_stats(struct nicvf *nic, struct bgx_stats_msg *bgx)
{
 if (bgx->rx)
  nic->bgx_stats.rx_stats[bgx->idx] = bgx->stats;
 else
  nic->bgx_stats.tx_stats[bgx->idx] = bgx->stats;
}
