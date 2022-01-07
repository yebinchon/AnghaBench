
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvu {int num_vec; int pdev; scalar_t__* irq_allocated; TYPE_1__* hw; } ;
struct TYPE_2__ {int total_pfs; } ;


 int BLKADDR_RVUM ;
 unsigned long long INTR_MASK (int ) ;
 int RVU_AF_PFAF_MBOX_INT_ENA_W1C ;
 int RVU_AF_PFFLR_INT_ENA_W1C ;
 int RVU_AF_PFME_INT_ENA_W1C ;
 int free_irq (int ,struct rvu*) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;
 int rvu_write64 (struct rvu*,int ,int ,unsigned long long) ;

__attribute__((used)) static void rvu_unregister_interrupts(struct rvu *rvu)
{
 int irq;


 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT_ENA_W1C,
      INTR_MASK(rvu->hw->total_pfs) & ~1ULL);


 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT_ENA_W1C,
      INTR_MASK(rvu->hw->total_pfs) & ~1ULL);


 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFME_INT_ENA_W1C,
      INTR_MASK(rvu->hw->total_pfs) & ~1ULL);

 for (irq = 0; irq < rvu->num_vec; irq++) {
  if (rvu->irq_allocated[irq])
   free_irq(pci_irq_vector(rvu->pdev, irq), rvu);
 }

 pci_free_irq_vectors(rvu->pdev);
 rvu->num_vec = 0;
}
