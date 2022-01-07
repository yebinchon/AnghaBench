
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int doorbell; } ;
struct TYPE_3__ {int fw_ring_id; } ;
struct bnxt_cp_ring_info {TYPE_2__ cp_db; TYPE_1__ cp_ring_struct; int ** cp_desc_ring; int cp_raw_cons; } ;
struct bnxt_napi {int napi; struct bnxt_cp_ring_info cp_ring; struct bnxt* bp; } ;
struct bnxt {int intr_sem; scalar_t__ bar0; } ;
typedef int irqreturn_t ;


 scalar_t__ BNXT_CAG_REG_LEGACY_INT_STATUS ;
 int BNXT_CP_DB_IRQ_DIS (int ) ;
 size_t CP_IDX (int) ;
 size_t CP_RING (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RING_CMP (int ) ;
 scalar_t__ atomic_read (int *) ;
 int bnxt_has_work (struct bnxt*,struct bnxt_cp_ring_info*) ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t bnxt_inta(int irq, void *dev_instance)
{
 struct bnxt_napi *bnapi = dev_instance;
 struct bnxt *bp = bnapi->bp;
 struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;
 u32 cons = RING_CMP(cpr->cp_raw_cons);
 u32 int_status;

 prefetch(&cpr->cp_desc_ring[CP_RING(cons)][CP_IDX(cons)]);

 if (!bnxt_has_work(bp, cpr)) {
  int_status = readl(bp->bar0 + BNXT_CAG_REG_LEGACY_INT_STATUS);

  if (!(int_status & (0x10000 << cpr->cp_ring_struct.fw_ring_id)))
   return IRQ_NONE;
 }


 BNXT_CP_DB_IRQ_DIS(cpr->cp_db.doorbell);


 if (unlikely(atomic_read(&bp->intr_sem) != 0))
  return IRQ_HANDLED;

 napi_schedule(&bnapi->napi);
 return IRQ_HANDLED;
}
