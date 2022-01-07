
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int vfs; } ;


 int INTR_MASK (int) ;
 int RVU_PF_VFFLR_INTX (int) ;
 int RVU_PF_VFFLR_INT_ENA_W1SX (int) ;
 int RVU_PF_VFME_INT_ENA_W1SX (int) ;
 int RVU_PF_VFPF_MBOX_INTX (int) ;
 int RVU_PF_VFPF_MBOX_INT_ENA_W1SX (int) ;
 int rvupf_write64 (struct rvu*,int ,int ) ;

__attribute__((used)) static void rvu_enable_afvf_intr(struct rvu *rvu)
{
 int vfs = rvu->vfs;





 rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INTX(0), INTR_MASK(vfs));
 rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INT_ENA_W1SX(0), INTR_MASK(vfs));


 rvupf_write64(rvu, RVU_PF_VFFLR_INTX(0), INTR_MASK(vfs));
 rvupf_write64(rvu, RVU_PF_VFFLR_INT_ENA_W1SX(0), INTR_MASK(vfs));
 rvupf_write64(rvu, RVU_PF_VFME_INT_ENA_W1SX(0), INTR_MASK(vfs));


 if (vfs <= 64)
  return;

 rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INTX(1), INTR_MASK(vfs - 64));
 rvupf_write64(rvu, RVU_PF_VFPF_MBOX_INT_ENA_W1SX(1),
        INTR_MASK(vfs - 64));

 rvupf_write64(rvu, RVU_PF_VFFLR_INTX(1), INTR_MASK(vfs - 64));
 rvupf_write64(rvu, RVU_PF_VFFLR_INT_ENA_W1SX(1), INTR_MASK(vfs - 64));
 rvupf_write64(rvu, RVU_PF_VFME_INT_ENA_W1SX(1), INTR_MASK(vfs - 64));
}
