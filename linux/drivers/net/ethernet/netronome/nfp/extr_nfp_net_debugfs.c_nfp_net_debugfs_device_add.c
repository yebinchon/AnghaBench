
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int nfp_dir ;
 int pci_name (struct pci_dev*) ;

struct dentry *nfp_net_debugfs_device_add(struct pci_dev *pdev)
{
 return debugfs_create_dir(pci_name(pdev), nfp_dir);
}
