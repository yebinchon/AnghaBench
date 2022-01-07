
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fw_ring_id; } ;
struct bnxt_tx_ring_info {int tx_cons; int tx_prod; TYPE_2__ tx_ring_struct; } ;
struct bnxt_napi {int index; TYPE_1__* bp; struct bnxt_tx_ring_info* tx_ring; } ;
struct TYPE_3__ {int dev; } ;


 int netdev_info (int ,char*,int,int ,int ,int ) ;

__attribute__((used)) static void bnxt_dump_tx_sw_state(struct bnxt_napi *bnapi)
{
 struct bnxt_tx_ring_info *txr = bnapi->tx_ring;
 int i = bnapi->index;

 if (!txr)
  return;

 netdev_info(bnapi->bp->dev, "[%d]: tx{fw_ring: %d prod: %x cons: %x}\n",
      i, txr->tx_ring_struct.fw_ring_id, txr->tx_prod,
      txr->tx_cons);
}
