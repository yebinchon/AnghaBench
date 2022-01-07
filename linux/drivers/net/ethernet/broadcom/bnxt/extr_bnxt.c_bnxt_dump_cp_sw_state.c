
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fw_ring_id; } ;
struct bnxt_cp_ring_info {int cp_raw_cons; TYPE_2__ cp_ring_struct; } ;
struct bnxt_napi {int index; TYPE_1__* bp; struct bnxt_cp_ring_info cp_ring; } ;
struct TYPE_3__ {int dev; } ;


 int netdev_info (int ,char*,int,int ,int ) ;

__attribute__((used)) static void bnxt_dump_cp_sw_state(struct bnxt_napi *bnapi)
{
 struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;
 int i = bnapi->index;

 netdev_info(bnapi->bp->dev, "[%d]: cp{fw_ring: %d raw_cons: %x}\n",
      i, cpr->cp_ring_struct.fw_ring_id, cpr->cp_raw_cons);
}
