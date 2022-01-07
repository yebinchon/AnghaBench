
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int debugfs_root; } ;
struct mmc_card {int state; struct dentry* debugfs_root; struct mmc_host* host; } ;
struct dentry {int dummy; } ;


 int S_IRUSR ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_x32 (char*,int ,struct dentry*,int *) ;
 int mmc_card_id (struct mmc_card*) ;

void mmc_add_card_debugfs(struct mmc_card *card)
{
 struct mmc_host *host = card->host;
 struct dentry *root;

 if (!host->debugfs_root)
  return;

 root = debugfs_create_dir(mmc_card_id(card), host->debugfs_root);
 card->debugfs_root = root;

 debugfs_create_x32("state", S_IRUSR, root, &card->state);
}
