
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int dbg_intfc; int pdev; } ;


 scalar_t__ dbg_root ;
 int debugfs_create_dir (char const*,scalar_t__) ;
 char* pci_name (int ) ;

void fm10k_dbg_intfc_init(struct fm10k_intfc *interface)
{
 const char *name = pci_name(interface->pdev);

 if (dbg_root)
  interface->dbg_intfc = debugfs_create_dir(name, dbg_root);
}
