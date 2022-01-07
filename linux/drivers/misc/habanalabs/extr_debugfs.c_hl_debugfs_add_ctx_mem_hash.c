
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_dbg_device_entry {int ctx_mem_hash_spinlock; int ctx_mem_hash_list; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;
struct hl_ctx {int debugfs_list; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_add_ctx_mem_hash(struct hl_device *hdev, struct hl_ctx *ctx)
{
 struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;

 spin_lock(&dev_entry->ctx_mem_hash_spinlock);
 list_add(&ctx->debugfs_list, &dev_entry->ctx_mem_hash_list);
 spin_unlock(&dev_entry->ctx_mem_hash_spinlock);
}
