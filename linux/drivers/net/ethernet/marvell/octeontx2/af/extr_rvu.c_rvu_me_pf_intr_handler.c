
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u8 ;
typedef unsigned long long u64 ;
struct rvu {TYPE_1__* hw; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned long long total_pfs; } ;


 int BIT_ULL (unsigned long long) ;
 int BLKADDR_RVUM ;
 int IRQ_HANDLED ;
 int RVU_AF_PFME_INT ;
 int RVU_AF_PFTRPEND ;
 unsigned long long rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t rvu_me_pf_intr_handler(int irq, void *rvu_irq)
{
 struct rvu *rvu = (struct rvu *)rvu_irq;
 u64 intr;
 u8 pf;

 intr = rvu_read64(rvu, BLKADDR_RVUM, RVU_AF_PFME_INT);




 for (pf = 0; pf < rvu->hw->total_pfs; pf++) {
  if (intr & (1ULL << pf)) {

   rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFTRPEND,
        BIT_ULL(pf));

   rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFME_INT,
        BIT_ULL(pf));
  }
 }

 return IRQ_HANDLED;
}
