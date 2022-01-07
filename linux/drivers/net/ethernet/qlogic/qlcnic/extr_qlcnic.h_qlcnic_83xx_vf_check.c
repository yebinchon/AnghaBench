
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {unsigned short device; } ;


 unsigned short PCI_DEVICE_ID_QLOGIC_VF_QLE834X ;
 unsigned short PCI_DEVICE_ID_QLOGIC_VF_QLE8C30 ;

__attribute__((used)) static inline bool qlcnic_83xx_vf_check(struct qlcnic_adapter *adapter)
{
 unsigned short device = adapter->pdev->device;

 return ((device == PCI_DEVICE_ID_QLOGIC_VF_QLE834X) ||
  (device == PCI_DEVICE_ID_QLOGIC_VF_QLE8C30)) ? 1 : 0;
}
