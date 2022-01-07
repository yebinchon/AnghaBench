
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_hwif {int dummy; } ;


 int HINIC_PCIE_AT_DISABLE ;
 int HINIC_PCIE_PH_DISABLE ;
 int HINIC_PCIE_SNOOP ;
 int HINIC_PCIE_ST_DISABLE ;
 int HINIC_PCIE_TPH_DISABLE ;
 int PCIE_ATTR_ENTRY ;
 int set_dma_attr (struct hinic_hwif*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dma_attr_init(struct hinic_hwif *hwif)
{
 set_dma_attr(hwif, PCIE_ATTR_ENTRY, HINIC_PCIE_ST_DISABLE,
       HINIC_PCIE_AT_DISABLE, HINIC_PCIE_PH_DISABLE,
       HINIC_PCIE_SNOOP, HINIC_PCIE_TPH_DISABLE);
}
