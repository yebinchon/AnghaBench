
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_hardware_context {scalar_t__ pci_base0; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_DEF_INT_MASK ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_HOST_MBX_CTRL ;
 int QLCNIC_MBX_INTR_ENBL ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int dev_info (int *,char*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline void qlcnic_dump_mailbox_registers(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 offset;

 offset = QLCRDX(ahw, QLCNIC_DEF_INT_MASK);
 dev_info(&adapter->pdev->dev, "Mbx interrupt mask=0x%x, Mbx interrupt enable=0x%x, Host mbx control=0x%x, Fw mbx control=0x%x",
   readl(ahw->pci_base0 + offset),
   QLCRDX(ahw, QLCNIC_MBX_INTR_ENBL),
   QLCRDX(ahw, QLCNIC_HOST_MBX_CTRL),
   QLCRDX(ahw, QLCNIC_FW_MBX_CTRL));
}
