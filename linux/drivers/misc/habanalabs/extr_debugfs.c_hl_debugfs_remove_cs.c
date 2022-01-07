
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hl_dbg_device_entry {int cs_spinlock; } ;
struct hl_cs {int debugfs_list; TYPE_2__* ctx; } ;
struct TYPE_4__ {TYPE_1__* hdev; } ;
struct TYPE_3__ {struct hl_dbg_device_entry hl_debugfs; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_remove_cs(struct hl_cs *cs)
{
 struct hl_dbg_device_entry *dev_entry = &cs->ctx->hdev->hl_debugfs;

 spin_lock(&dev_entry->cs_spinlock);
 list_del(&cs->debugfs_list);
 spin_unlock(&dev_entry->cs_spinlock);
}
