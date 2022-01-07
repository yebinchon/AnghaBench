
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_userptr {int debugfs_list; } ;
struct hl_dbg_device_entry {int userptr_spinlock; int userptr_list; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_add_userptr(struct hl_device *hdev, struct hl_userptr *userptr)
{
 struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;

 spin_lock(&dev_entry->userptr_spinlock);
 list_add(&userptr->debugfs_list, &dev_entry->userptr_list);
 spin_unlock(&dev_entry->userptr_spinlock);
}
