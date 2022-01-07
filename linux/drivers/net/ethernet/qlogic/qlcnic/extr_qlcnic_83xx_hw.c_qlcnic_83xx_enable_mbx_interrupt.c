
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int num_msix; } ;


 int BIT_2 ;
 int QLCNIC_MBX_INTR_ENBL ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCWRX (TYPE_1__*,int ,int) ;
 int qlcnic_83xx_enable_legacy_msix_mbx_intr (struct qlcnic_adapter*) ;

void qlcnic_83xx_enable_mbx_interrupt(struct qlcnic_adapter *adapter)
{
 u32 val;

 if (adapter->flags & QLCNIC_MSIX_ENABLED)
  val = BIT_2 | ((adapter->ahw->num_msix - 1) << 8);
 else
  val = BIT_2;

 QLCWRX(adapter->ahw, QLCNIC_MBX_INTR_ENBL, val);
 qlcnic_83xx_enable_legacy_msix_mbx_intr(adapter);
}
