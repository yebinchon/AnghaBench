
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct octeon_device {TYPE_1__* pci_dev; int pf_num; } ;
struct TYPE_7__ {int dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int __pci_reset_function_locked (TYPE_1__*) ;
 int dev_err (int *,char*,int,int ) ;
 int pci_cfg_access_lock (TYPE_1__*) ;
 int pci_cfg_access_unlock (TYPE_1__*) ;
 int pci_restore_state (TYPE_1__*) ;
 int pci_save_state (TYPE_1__*) ;
 int pci_write_config_word (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void octeon_pci_flr(struct octeon_device *oct)
{
 int rc;

 pci_save_state(oct->pci_dev);

 pci_cfg_access_lock(oct->pci_dev);


 pci_write_config_word(oct->pci_dev, PCI_COMMAND,
         PCI_COMMAND_INTX_DISABLE);

 rc = __pci_reset_function_locked(oct->pci_dev);

 if (rc != 0)
  dev_err(&oct->pci_dev->dev, "Error %d resetting PCI function %d\n",
   rc, oct->pf_num);

 pci_cfg_access_unlock(oct->pci_dev);

 pci_restore_state(oct->pci_dev);
}
