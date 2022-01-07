
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_desc_info; int tx_desc_info; } ;
struct dev_info {TYPE_1__ hw; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int ksz_free_buffers (struct dev_info*,int *,int ) ;
 int ksz_free_desc (struct dev_info*) ;

__attribute__((used)) static void ksz_free_mem(struct dev_info *adapter)
{

 ksz_free_buffers(adapter, &adapter->hw.tx_desc_info,
  PCI_DMA_TODEVICE);


 ksz_free_buffers(adapter, &adapter->hw.rx_desc_info,
  PCI_DMA_FROMDEVICE);


 ksz_free_desc(adapter);
}
