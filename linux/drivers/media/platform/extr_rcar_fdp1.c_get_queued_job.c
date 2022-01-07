
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_job {int dummy; } ;
struct fdp1_dev {int queued_job_list; } ;


 struct fdp1_job* list_remove_job (struct fdp1_dev*,int *) ;

__attribute__((used)) static struct fdp1_job *get_queued_job(struct fdp1_dev *fdp1)
{
 return list_remove_job(fdp1, &fdp1->queued_job_list);
}
