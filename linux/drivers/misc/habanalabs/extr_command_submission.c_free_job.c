
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int dummy; } ;
struct hl_cs_job {scalar_t__ ext_queue; int cs_node; TYPE_1__* patched_cb; int userptr_list; struct hl_cs* cs; } ;
struct hl_cs {int job_lock; } ;
struct TYPE_2__ {int lock; int cs_cnt; } ;


 int cs_put (struct hl_cs*) ;
 int hl_cb_put (TYPE_1__*) ;
 int hl_debugfs_remove_job (struct hl_device*,struct hl_cs_job*) ;
 int hl_userptr_delete_list (struct hl_device*,int *) ;
 int kfree (struct hl_cs_job*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void free_job(struct hl_device *hdev, struct hl_cs_job *job)
{
 struct hl_cs *cs = job->cs;

 if (job->ext_queue) {
  hl_userptr_delete_list(hdev, &job->userptr_list);





  if (job->patched_cb) {
   spin_lock(&job->patched_cb->lock);
   job->patched_cb->cs_cnt--;
   spin_unlock(&job->patched_cb->lock);

   hl_cb_put(job->patched_cb);
  }
 }





 spin_lock(&cs->job_lock);
 list_del(&job->cs_node);
 spin_unlock(&cs->job_lock);

 hl_debugfs_remove_job(hdev, job);

 if (job->ext_queue)
  cs_put(cs);

 kfree(job);
}
