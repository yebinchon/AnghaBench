
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_job {int dummy; } ;
struct fdp1_dev {int free_job_list; } ;


 int list_add_job (struct fdp1_dev*,int *,struct fdp1_job*) ;
 int memset (struct fdp1_job*,int ,int) ;

__attribute__((used)) static void fdp1_job_free(struct fdp1_dev *fdp1, struct fdp1_job *job)
{

 memset(job, 0, sizeof(struct fdp1_job));

 list_add_job(fdp1, &fdp1->free_job_list, job);
}
