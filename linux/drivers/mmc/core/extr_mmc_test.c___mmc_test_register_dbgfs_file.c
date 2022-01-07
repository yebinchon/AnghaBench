
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct mmc_test_dbgfs_file {int link; struct dentry* file; struct mmc_card* card; } ;
struct mmc_card {scalar_t__ debugfs_root; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int debugfs_create_file (char const*,int ,scalar_t__,struct mmc_card*,struct file_operations const*) ;
 int debugfs_remove (struct dentry*) ;
 struct mmc_test_dbgfs_file* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mmc_test_file_test ;

__attribute__((used)) static int __mmc_test_register_dbgfs_file(struct mmc_card *card,
 const char *name, umode_t mode, const struct file_operations *fops)
{
 struct dentry *file = ((void*)0);
 struct mmc_test_dbgfs_file *df;

 if (card->debugfs_root)
  debugfs_create_file(name, mode, card->debugfs_root, card, fops);

 df = kmalloc(sizeof(*df), GFP_KERNEL);
 if (!df) {
  debugfs_remove(file);
  return -ENOMEM;
 }

 df->card = card;
 df->file = file;

 list_add(&df->link, &mmc_test_file_test);
 return 0;
}
