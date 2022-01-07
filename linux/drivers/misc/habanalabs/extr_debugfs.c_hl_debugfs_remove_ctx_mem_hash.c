
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_dbg_device_entry {int ctx_mem_hash_spinlock; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;
struct hl_ctx {int debugfs_list; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_remove_ctx_mem_hash(struct hl_device *hdev, struct hl_ctx *ctx)
{
 struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;

 spin_lock(&dev_entry->ctx_mem_hash_spinlock);
 list_del(&ctx->debugfs_list);
 spin_unlock(&dev_entry->ctx_mem_hash_spinlock);
}
