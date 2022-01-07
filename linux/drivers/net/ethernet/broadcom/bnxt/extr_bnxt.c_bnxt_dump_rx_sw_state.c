
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fw_ring_id; } ;
struct TYPE_5__ {int fw_ring_id; } ;
struct bnxt_rx_ring_info {int rx_sw_agg_prod; int rx_agg_prod; TYPE_3__ rx_agg_ring_struct; int rx_prod; TYPE_2__ rx_ring_struct; } ;
struct bnxt_napi {int index; TYPE_1__* bp; struct bnxt_rx_ring_info* rx_ring; } ;
struct TYPE_4__ {int dev; } ;


 int netdev_info (int ,char*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bnxt_dump_rx_sw_state(struct bnxt_napi *bnapi)
{
 struct bnxt_rx_ring_info *rxr = bnapi->rx_ring;
 int i = bnapi->index;

 if (!rxr)
  return;

 netdev_info(bnapi->bp->dev, "[%d]: rx{fw_ring: %d prod: %x} rx_agg{fw_ring: %d agg_prod: %x sw_agg_prod: %x}\n",
      i, rxr->rx_ring_struct.fw_ring_id, rxr->rx_prod,
      rxr->rx_agg_ring_struct.fw_ring_id, rxr->rx_agg_prod,
      rxr->rx_sw_agg_prod);
}
