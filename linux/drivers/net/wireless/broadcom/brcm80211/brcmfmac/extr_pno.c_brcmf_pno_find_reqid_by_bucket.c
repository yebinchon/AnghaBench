
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct brcmf_pno_info {size_t n_reqs; int req_lock; TYPE_1__** reqs; } ;
struct TYPE_2__ {int reqid; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u64 brcmf_pno_find_reqid_by_bucket(struct brcmf_pno_info *pi, u32 bucket)
{
 u64 reqid = 0;

 mutex_lock(&pi->req_lock);

 if (bucket < pi->n_reqs)
  reqid = pi->reqs[bucket]->reqid;

 mutex_unlock(&pi->req_lock);
 return reqid;
}
