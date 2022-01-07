
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct bnxt_cp_ring_info {TYPE_1__ dim; } ;
struct bnxt {int cp_nr_rings; TYPE_2__** bnapi; } ;
struct TYPE_4__ {int napi; scalar_t__ rx_ring; struct bnxt_cp_ring_info cp_ring; } ;


 int cancel_work_sync (int *) ;
 int napi_disable (int *) ;

__attribute__((used)) static void bnxt_disable_napi(struct bnxt *bp)
{
 int i;

 if (!bp->bnapi)
  return;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_cp_ring_info *cpr = &bp->bnapi[i]->cp_ring;

  if (bp->bnapi[i]->rx_ring)
   cancel_work_sync(&cpr->dim.work);

  napi_disable(&bp->bnapi[i]->napi);
 }
}
