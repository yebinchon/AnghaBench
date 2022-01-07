
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct qlcnic_adapter {int flags; TYPE_2__* msix_entries; TYPE_1__* ahw; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {size_t num_msix; } ;


 int QLCNIC_MSIX_ENABLED ;
 int free_irq (int ,struct qlcnic_adapter*) ;
 int msleep (int) ;
 int qlcnic_83xx_disable_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_legacy_intr_mask (struct qlcnic_adapter*) ;
 int synchronize_irq (int ) ;

void qlcnic_83xx_free_mbx_intr(struct qlcnic_adapter *adapter)
{
 u32 num_msix;

 if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
  qlcnic_83xx_set_legacy_intr_mask(adapter);

 qlcnic_83xx_disable_mbx_intr(adapter);

 if (adapter->flags & QLCNIC_MSIX_ENABLED)
  num_msix = adapter->ahw->num_msix - 1;
 else
  num_msix = 0;

 msleep(20);

 if (adapter->msix_entries) {
  synchronize_irq(adapter->msix_entries[num_msix].vector);
  free_irq(adapter->msix_entries[num_msix].vector, adapter);
 }
}
