
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_fpriv {int debugfs_list; TYPE_1__* hdev; } ;
struct hl_dbg_device_entry {int file_mutex; } ;
struct TYPE_2__ {struct hl_dbg_device_entry hl_debugfs; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void hl_debugfs_remove_file(struct hl_fpriv *hpriv)
{
 struct hl_dbg_device_entry *dev_entry = &hpriv->hdev->hl_debugfs;

 mutex_lock(&dev_entry->file_mutex);
 list_del(&hpriv->debugfs_list);
 mutex_unlock(&dev_entry->file_mutex);
}
