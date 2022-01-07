
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int fw_mismatch_notified; int auto_recover; } ;


 int bfa_nw_auto_recover ;

__attribute__((used)) static void
bfa_iocpf_sm_reset_entry(struct bfa_iocpf *iocpf)
{
 iocpf->fw_mismatch_notified = 0;
 iocpf->auto_recover = bfa_nw_auto_recover;
}
