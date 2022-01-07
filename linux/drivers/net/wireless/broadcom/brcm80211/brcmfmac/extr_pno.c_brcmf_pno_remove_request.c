
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct brcmf_pno_info {int n_reqs; int req_lock; TYPE_1__** reqs; } ;
struct TYPE_2__ {scalar_t__ reqid; } ;


 int ENOENT ;
 int SCAN ;
 scalar_t__ WARN (int,char*) ;
 int brcmf_dbg (int ,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int brcmf_pno_remove_request(struct brcmf_pno_info *pi, u64 reqid)
{
 int i, err = 0;

 mutex_lock(&pi->req_lock);


 for (i = 0; i < pi->n_reqs; i++) {
  if (pi->reqs[i]->reqid == reqid)
   break;
 }

 if (WARN(i == pi->n_reqs, "reqid not found\n")) {
  err = -ENOENT;
  goto done;
 }

 brcmf_dbg(SCAN, "reqid=%llu\n", reqid);
 pi->n_reqs--;


 if (!pi->n_reqs || i == pi->n_reqs)
  goto done;


 while (i <= pi->n_reqs - 1) {
  pi->reqs[i] = pi->reqs[i + 1];
  i++;
 }

done:
 mutex_unlock(&pi->req_lock);
 return err;
}
