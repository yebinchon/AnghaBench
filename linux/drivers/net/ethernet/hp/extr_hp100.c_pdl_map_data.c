
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct hp100_private {int pci_dev; } ;


 int MAX_ETHER_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int pci_map_single (int ,void*,int ,int ) ;

__attribute__((used)) static inline u_int pdl_map_data(struct hp100_private *lp, void *data)
{
 return pci_map_single(lp->pci_dev, data,
         MAX_ETHER_SIZE, PCI_DMA_FROMDEVICE);
}
