
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_fw_dump {int * tmpl_hdr; int * dma_buffer; int phys_addr; } ;
struct qlcnic_adapter {TYPE_3__* ahw; TYPE_1__* pdev; int * recv_ctx; } ;
struct TYPE_5__ {int * buff; } ;
struct TYPE_6__ {struct qlcnic_fw_dump fw_dump; TYPE_2__ reset; } ;
struct TYPE_4__ {int dev; } ;


 int QLC_PEX_DMA_READ_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void qlcnic_free_adapter_resources(struct qlcnic_adapter *adapter)
{
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;

 kfree(adapter->recv_ctx);
 adapter->recv_ctx = ((void*)0);

 if (fw_dump->tmpl_hdr) {
  vfree(fw_dump->tmpl_hdr);
  fw_dump->tmpl_hdr = ((void*)0);
 }

 if (fw_dump->dma_buffer) {
  dma_free_coherent(&adapter->pdev->dev, QLC_PEX_DMA_READ_SIZE,
      fw_dump->dma_buffer, fw_dump->phys_addr);
  fw_dump->dma_buffer = ((void*)0);
 }

 kfree(adapter->ahw->reset.buff);
 adapter->ahw->fw_dump.tmpl_hdr = ((void*)0);
}
