
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rvu {int dummy; } ;
typedef int irqreturn_t ;


 int BLKADDR_RVUM ;
 int IRQ_HANDLED ;
 int RVU_AF_PFME_INT ;
 int RVU_PF_VFME_INTX (int) ;
 int rvu_me_handle_vfset (struct rvu*,int,scalar_t__) ;
 scalar_t__ rvu_read64 (struct rvu*,int ,int ) ;
 scalar_t__ rvupf_read64 (struct rvu*,int ) ;

__attribute__((used)) static irqreturn_t rvu_me_vf_intr_handler(int irq, void *rvu_irq)
{
 struct rvu *rvu = (struct rvu *)rvu_irq;
 int vfset;
 u64 intr;

 intr = rvu_read64(rvu, BLKADDR_RVUM, RVU_AF_PFME_INT);

 for (vfset = 0; vfset <= 1; vfset++) {
  intr = rvupf_read64(rvu, RVU_PF_VFME_INTX(vfset));
  if (intr)
   rvu_me_handle_vfset(rvu, vfset, intr);
 }

 return IRQ_HANDLED;
}
