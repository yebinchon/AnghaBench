
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;
struct atmel_mci_slot {int completed_events; int pending_events; int state; struct atmel_mci_slot* host; struct mmc_host* mmc; } ;
struct atmel_mci {int completed_events; int pending_events; int state; struct atmel_mci* host; struct mmc_host* mmc; } ;


 int S_IRUSR ;
 int atmci_regs_fops ;
 int atmci_req_fops ;
 int debugfs_create_file (char*,int ,struct dentry*,struct atmel_mci_slot*,int *) ;
 int debugfs_create_u32 (char*,int ,struct dentry*,int *) ;
 int debugfs_create_x32 (char*,int ,struct dentry*,int *) ;

__attribute__((used)) static void atmci_init_debugfs(struct atmel_mci_slot *slot)
{
 struct mmc_host *mmc = slot->mmc;
 struct atmel_mci *host = slot->host;
 struct dentry *root;

 root = mmc->debugfs_root;
 if (!root)
  return;

 debugfs_create_file("regs", S_IRUSR, root, host, &atmci_regs_fops);
 debugfs_create_file("req", S_IRUSR, root, slot, &atmci_req_fops);
 debugfs_create_u32("state", S_IRUSR, root, (u32 *)&host->state);
 debugfs_create_x32("pending_events", S_IRUSR, root,
      (u32 *)&host->pending_events);
 debugfs_create_x32("completed_events", S_IRUSR, root,
      (u32 *)&host->completed_events);
}
