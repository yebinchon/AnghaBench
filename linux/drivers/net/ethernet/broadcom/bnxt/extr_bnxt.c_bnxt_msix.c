
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_cp_ring_info {int ** cp_desc_ring; int event_ctr; int cp_raw_cons; } ;
struct bnxt_napi {int napi; struct bnxt_cp_ring_info cp_ring; struct bnxt* bp; } ;
struct bnxt {int dummy; } ;
typedef int irqreturn_t ;


 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int IRQ_HANDLED ;
 int RING_CMP (int ) ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;

__attribute__((used)) static irqreturn_t bnxt_msix(int irq, void *dev_instance)
{
 struct bnxt_napi *bnapi = dev_instance;
 struct bnxt *bp = bnapi->bp;
 struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;
 u32 cons = RING_CMP(cpr->cp_raw_cons);

 cpr->event_ctr++;
 prefetch(&cpr->cp_desc_ring[CP_RING(cons)][CP_IDX(cons)]);
 napi_schedule(&bnapi->napi);
 return IRQ_HANDLED;
}
