
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct hl_cs_job {int ext_queue; int finish_work; int userptr_list; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int job_wq_completion ;
 struct hl_cs_job* kzalloc (int,int ) ;

struct hl_cs_job *hl_cs_allocate_job(struct hl_device *hdev, bool ext_queue)
{
 struct hl_cs_job *job;

 job = kzalloc(sizeof(*job), GFP_ATOMIC);
 if (!job)
  return ((void*)0);

 job->ext_queue = ext_queue;

 if (job->ext_queue) {
  INIT_LIST_HEAD(&job->userptr_list);
  INIT_WORK(&job->finish_work, job_wq_completion);
 }

 return job;
}
