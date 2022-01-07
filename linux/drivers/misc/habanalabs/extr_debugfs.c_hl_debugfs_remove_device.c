
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_dbg_device_entry {int entry_arr; int file_mutex; int root; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;

void hl_debugfs_remove_device(struct hl_device *hdev)
{
 struct hl_dbg_device_entry *entry = &hdev->hl_debugfs;

 debugfs_remove_recursive(entry->root);

 mutex_destroy(&entry->file_mutex);
 kfree(entry->entry_arr);
}
