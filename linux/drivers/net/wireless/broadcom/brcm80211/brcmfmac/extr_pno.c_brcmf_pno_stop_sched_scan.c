
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct brcmf_pno_info {scalar_t__ n_reqs; } ;
struct brcmf_if {int dummy; } ;


 int TRACE ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_pno_clean (struct brcmf_if*) ;
 int brcmf_pno_config_sched_scans (struct brcmf_if*) ;
 int brcmf_pno_remove_request (struct brcmf_pno_info*,int ) ;
 struct brcmf_pno_info* ifp_to_pno (struct brcmf_if*) ;

int brcmf_pno_stop_sched_scan(struct brcmf_if *ifp, u64 reqid)
{
 struct brcmf_pno_info *pi;
 int err;

 brcmf_dbg(TRACE, "reqid=%llu\n", reqid);

 pi = ifp_to_pno(ifp);


 if (!pi->n_reqs)
  return 0;

 err = brcmf_pno_remove_request(pi, reqid);
 if (err)
  return err;

 brcmf_pno_clean(ifp);

 if (pi->n_reqs)
  (void)brcmf_pno_config_sched_scans(ifp);

 return 0;
}
