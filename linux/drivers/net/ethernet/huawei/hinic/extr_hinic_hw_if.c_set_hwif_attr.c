
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* num_dma_attr; void* num_irqs; void* num_ceqs; void* num_aeqs; void* func_type; void* pci_intf_idx; void* pf_idx; void* func_idx; } ;
struct hinic_hwif {TYPE_1__ attr; } ;


 int AEQS_PER_FUNC ;
 void* BIT (int ) ;
 int CEQS_PER_FUNC ;
 int DMA_ATTR_PER_FUNC ;
 int FUNC_IDX ;
 int FUNC_TYPE ;
 void* HINIC_FA0_GET (int ,int ) ;
 int HINIC_FA1_GET (int ,int ) ;
 int IRQS_PER_FUNC ;
 int PCI_INTF_IDX ;
 int PF_IDX ;

__attribute__((used)) static void set_hwif_attr(struct hinic_hwif *hwif, u32 attr0, u32 attr1)
{
 hwif->attr.func_idx = HINIC_FA0_GET(attr0, FUNC_IDX);
 hwif->attr.pf_idx = HINIC_FA0_GET(attr0, PF_IDX);
 hwif->attr.pci_intf_idx = HINIC_FA0_GET(attr0, PCI_INTF_IDX);
 hwif->attr.func_type = HINIC_FA0_GET(attr0, FUNC_TYPE);

 hwif->attr.num_aeqs = BIT(HINIC_FA1_GET(attr1, AEQS_PER_FUNC));
 hwif->attr.num_ceqs = BIT(HINIC_FA1_GET(attr1, CEQS_PER_FUNC));
 hwif->attr.num_irqs = BIT(HINIC_FA1_GET(attr1, IRQS_PER_FUNC));
 hwif->attr.num_dma_attr = BIT(HINIC_FA1_GET(attr1, DMA_ATTR_PER_FUNC));
}
