
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu {int vfs; int afvf_wq_info; TYPE_1__* hw; int afpf_wq_info; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int total_pfs; } ;


 int BLKADDR_RVUM ;
 int IRQ_HANDLED ;
 int RVU_AF_PFAF_MBOX_INT ;
 int RVU_PF_VFPF_MBOX_INTX (int) ;
 int rmb () ;
 int rvu_queue_work (int *,int,int,int ) ;
 int rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int ) ;
 int rvupf_read64 (struct rvu*,int ) ;
 int rvupf_write64 (struct rvu*,int ,int ) ;

__attribute__((used)) static irqreturn_t rvu_mbox_intr_handler(int irq, void *rvu_irq)
{
 struct rvu *rvu = (struct rvu *)rvu_irq;
 int vfs = rvu->vfs;
 u64 intr;

 intr = rvu_read64(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT);

 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT, intr);


 rmb();

 rvu_queue_work(&rvu->afpf_wq_info, 0, rvu->hw->total_pfs, intr);


 if (vfs > 64) {
  intr = rvupf_read64(rvu, RVU_PF_VFPF_MBOX_INTX(1));
  rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INTX(1), intr);

  rvu_queue_work(&rvu->afvf_wq_info, 64, vfs, intr);
  vfs -= 64;
 }

 intr = rvupf_read64(rvu, RVU_PF_VFPF_MBOX_INTX(0));
 rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INTX(0), intr);

 rvu_queue_work(&rvu->afvf_wq_info, 0, vfs, intr);

 return IRQ_HANDLED;
}
