
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_dbg_device_entry {int cs_job_spinlock; } ;
struct hl_device {struct hl_dbg_device_entry hl_debugfs; } ;
struct hl_cs_job {int debugfs_list; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hl_debugfs_remove_job(struct hl_device *hdev, struct hl_cs_job *job)
{
 struct hl_dbg_device_entry *dev_entry = &hdev->hl_debugfs;

 spin_lock(&dev_entry->cs_job_spinlock);
 list_del(&job->debugfs_list);
 spin_unlock(&dev_entry->cs_job_spinlock);
}
