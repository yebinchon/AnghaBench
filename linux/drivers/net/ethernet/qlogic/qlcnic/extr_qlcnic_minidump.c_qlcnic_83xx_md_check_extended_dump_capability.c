
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int* extra_capability; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_QLOGIC_QLE8830 ;
 int QLCNIC_FW_CAPABILITY_2_EXT_ISCSI_DUMP ;

__attribute__((used)) static inline bool
qlcnic_83xx_md_check_extended_dump_capability(struct qlcnic_adapter *adapter)
{





 return ((adapter->pdev->device == PCI_DEVICE_ID_QLOGIC_QLE8830) &&
  (adapter->ahw->extra_capability[0] &
   QLCNIC_FW_CAPABILITY_2_EXT_ISCSI_DUMP));
}
