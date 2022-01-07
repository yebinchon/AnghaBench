
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_debugfs_entry {int name; int fops; int mode; } ;
struct bnad {int netdev; int * bnad_dentry_files; void* port_debugfs_root; int pcidev; } ;
typedef int name ;


 int ARRAY_SIZE (struct bnad_debugfs_entry*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int bna_debugfs_port_count ;
 int * bna_debugfs_root ;
 struct bnad_debugfs_entry* bnad_debugfs_files ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (int ,int ,void*,struct bnad*,int ) ;
 int netdev_warn (int ,char*,...) ;
 char* pci_name (int ) ;
 int snprintf (char*,int,char*,char*) ;

void
bnad_debugfs_init(struct bnad *bnad)
{
 const struct bnad_debugfs_entry *file;
 char name[64];
 int i;


 if (!bna_debugfs_root) {
  bna_debugfs_root = debugfs_create_dir("bna", ((void*)0));
  atomic_set(&bna_debugfs_port_count, 0);
  if (!bna_debugfs_root) {
   netdev_warn(bnad->netdev,
        "debugfs root dir creation failed\n");
   return;
  }
 }


 snprintf(name, sizeof(name), "pci_dev:%s", pci_name(bnad->pcidev));
 if (!bnad->port_debugfs_root) {
  bnad->port_debugfs_root =
   debugfs_create_dir(name, bna_debugfs_root);
  if (!bnad->port_debugfs_root) {
   netdev_warn(bnad->netdev,
        "debugfs root dir creation failed\n");
   return;
  }

  atomic_inc(&bna_debugfs_port_count);

  for (i = 0; i < ARRAY_SIZE(bnad_debugfs_files); i++) {
   file = &bnad_debugfs_files[i];
   bnad->bnad_dentry_files[i] =
     debugfs_create_file(file->name,
       file->mode,
       bnad->port_debugfs_root,
       bnad,
       file->fops);
   if (!bnad->bnad_dentry_files[i]) {
    netdev_warn(bnad->netdev,
         "create %s entry failed\n",
         file->name);
    return;
   }
  }
 }
}
