
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_dbg_device_entry {int cb_spinlock; int cb_list; } ;
struct hl_cb {int debugfs_list; TYPE_1__* hdev; } ;
struct TYPE_2__ {struct hl_dbg_device_entry hl_debugfs; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_add_cb(struct hl_cb *cb)
{
 struct hl_dbg_device_entry *dev_entry = &cb->hdev->hl_debugfs;

 spin_lock(&dev_entry->cb_spinlock);
 list_add(&cb->debugfs_list, &dev_entry->cb_list);
 spin_unlock(&dev_entry->cb_spinlock);
}
