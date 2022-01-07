
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct fw_desc {scalar_t__ len; int * v_addr; int p_addr; } ;


 int dma_free_coherent (int *,scalar_t__,int *,int ) ;

__attribute__((used)) static inline void
il_free_fw_desc(struct pci_dev *pci_dev, struct fw_desc *desc)
{
 if (desc->v_addr)
  dma_free_coherent(&pci_dev->dev, desc->len, desc->v_addr,
      desc->p_addr);
 desc->v_addr = ((void*)0);
 desc->len = 0;
}
