
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; } ;
struct pasemi_mac {struct pci_dev* pdev; } ;


 int PAS_DMA_CAP_IFI ;
 int PAS_DMA_CAP_IFI_IOFF_M ;
 int PAS_DMA_CAP_IFI_IOFF_S ;
 int PAS_DMA_CAP_IFI_NIN_M ;
 int PAS_DMA_CAP_IFI_NIN_S ;
 int read_dma_reg (int) ;

__attribute__((used)) static int mac_to_intf(struct pasemi_mac *mac)
{
 struct pci_dev *pdev = mac->pdev;
 u32 tmp;
 int nintf, off, i, j;
 int devfn = pdev->devfn;

 tmp = read_dma_reg(PAS_DMA_CAP_IFI);
 nintf = (tmp & PAS_DMA_CAP_IFI_NIN_M) >> PAS_DMA_CAP_IFI_NIN_S;
 off = (tmp & PAS_DMA_CAP_IFI_IOFF_M) >> PAS_DMA_CAP_IFI_IOFF_S;
 for (i = 0; i < (nintf+3)/4; i++) {
  tmp = read_dma_reg(off+4*i);
  for (j = 0; j < 4; j++) {
   if (((tmp >> (8*j)) & 0xff) == devfn)
    return i*4 + j;
  }
 }
 return -1;
}
