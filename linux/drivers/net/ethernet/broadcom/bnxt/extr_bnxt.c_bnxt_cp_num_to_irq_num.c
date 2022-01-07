
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_idx; } ;
struct bnxt_cp_ring_info {TYPE_1__ cp_ring_struct; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {struct bnxt_napi** bnapi; } ;



__attribute__((used)) static int bnxt_cp_num_to_irq_num(struct bnxt *bp, int n)
{
 struct bnxt_napi *bnapi = bp->bnapi[n];
 struct bnxt_cp_ring_info *cpr;

 cpr = &bnapi->cp_ring;
 return cpr->cp_ring_struct.map_idx;
}
