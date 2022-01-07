
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int work; } ;
struct bnxt_cp_ring_info {TYPE_1__ dim; } ;
struct bnxt {int cp_nr_rings; TYPE_2__** bnapi; } ;
struct TYPE_4__ {int in_reset; int napi; scalar_t__ rx_ring; struct bnxt_cp_ring_info cp_ring; } ;


 int DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int INIT_WORK (int *,int ) ;
 int bnxt_dim_work ;
 int napi_enable (int *) ;

__attribute__((used)) static void bnxt_enable_napi(struct bnxt *bp)
{
 int i;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_cp_ring_info *cpr = &bp->bnapi[i]->cp_ring;
  bp->bnapi[i]->in_reset = 0;

  if (bp->bnapi[i]->rx_ring) {
   INIT_WORK(&cpr->dim.work, bnxt_dim_work);
   cpr->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
  }
  napi_enable(&bp->bnapi[i]->napi);
 }
}
