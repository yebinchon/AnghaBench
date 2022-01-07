
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u8 ;
typedef unsigned long long u64 ;
struct rvu {int vfs; TYPE_2__* flr_wrk; int flr_wq; TYPE_1__* hw; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int work; } ;
struct TYPE_3__ {unsigned long long total_pfs; } ;


 int BIT_ULL (unsigned long long) ;
 int BLKADDR_RVUM ;
 int IRQ_HANDLED ;
 int RVU_AF_PFFLR_INT ;
 int RVU_AF_PFFLR_INT_ENA_W1C ;
 int queue_work (int ,int *) ;
 int rvu_afvf_queue_flr_work (struct rvu*,int,int) ;
 unsigned long long rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t rvu_flr_intr_handler(int irq, void *rvu_irq)
{
 struct rvu *rvu = (struct rvu *)rvu_irq;
 u64 intr;
 u8 pf;

 intr = rvu_read64(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT);
 if (!intr)
  goto afvf_flr;

 for (pf = 0; pf < rvu->hw->total_pfs; pf++) {
  if (intr & (1ULL << pf)) {

   queue_work(rvu->flr_wq, &rvu->flr_wrk[pf].work);

   rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT,
        BIT_ULL(pf));

   rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT_ENA_W1C,
        BIT_ULL(pf));
  }
 }

afvf_flr:
 rvu_afvf_queue_flr_work(rvu, 0, 64);
 if (rvu->vfs > 64)
  rvu_afvf_queue_flr_work(rvu, 64, rvu->vfs - 64);

 return IRQ_HANDLED;
}
