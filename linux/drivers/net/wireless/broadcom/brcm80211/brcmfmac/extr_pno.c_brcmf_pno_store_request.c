
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_sched_scan_request {int reqid; } ;
struct brcmf_pno_info {scalar_t__ n_reqs; int req_lock; struct cfg80211_sched_scan_request** reqs; } ;


 scalar_t__ BRCMF_PNO_MAX_BUCKETS ;
 int ENOSPC ;
 int SCAN ;
 scalar_t__ WARN (int,char*) ;
 int brcmf_dbg (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int brcmf_pno_store_request(struct brcmf_pno_info *pi,
       struct cfg80211_sched_scan_request *req)
{
 if (WARN(pi->n_reqs == BRCMF_PNO_MAX_BUCKETS,
   "pno request storage full\n"))
  return -ENOSPC;

 brcmf_dbg(SCAN, "reqid=%llu\n", req->reqid);
 mutex_lock(&pi->req_lock);
 pi->reqs[pi->n_reqs++] = req;
 mutex_unlock(&pi->req_lock);
 return 0;
}
