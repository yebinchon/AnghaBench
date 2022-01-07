
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; struct pci_dev* pdev; } ;


 scalar_t__ e1000_i210 ;
 scalar_t__ e1000_i211 ;
 int igb_enable_sriov (struct pci_dev*,int ) ;
 int igb_reset_interrupt_capability (struct igb_adapter*) ;
 int igb_set_interrupt_capability (struct igb_adapter*,int) ;
 int max_vfs ;
 int pci_sriov_set_totalvfs (struct pci_dev*,int) ;

__attribute__((used)) static void igb_probe_vfs(struct igb_adapter *adapter)
{
}
