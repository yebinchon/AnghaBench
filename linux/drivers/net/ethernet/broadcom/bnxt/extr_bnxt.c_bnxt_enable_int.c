
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_cp_ring_info {int cp_raw_cons; int cp_db; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {int cp_nr_rings; struct bnxt_napi** bnapi; int intr_sem; } ;


 int atomic_set (int *,int ) ;
 int bnxt_db_nq_arm (struct bnxt*,int *,int ) ;

__attribute__((used)) static void bnxt_enable_int(struct bnxt *bp)
{
 int i;

 atomic_set(&bp->intr_sem, 0);
 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_napi *bnapi = bp->bnapi[i];
  struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;

  bnxt_db_nq_arm(bp, &cpr->cp_db, cpr->cp_raw_cons);
 }
}
