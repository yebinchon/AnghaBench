
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int pdev; } ;
typedef TYPE_1__ adapter_t ;


 int A_PCICFG_INTR_CAUSE ;
 int pci_read_config_dword (int ,int ,scalar_t__*) ;
 int pci_write_config_dword (int ,int ,scalar_t__) ;
 int t1_fatal_err (TYPE_1__*) ;

__attribute__((used)) static int t1_pci_intr_handler(adapter_t *adapter)
{
 u32 pcix_cause;

 pci_read_config_dword(adapter->pdev, A_PCICFG_INTR_CAUSE, &pcix_cause);

 if (pcix_cause) {
  pci_write_config_dword(adapter->pdev, A_PCICFG_INTR_CAUSE,
           pcix_cause);
  t1_fatal_err(adapter);
 }
 return 0;
}
