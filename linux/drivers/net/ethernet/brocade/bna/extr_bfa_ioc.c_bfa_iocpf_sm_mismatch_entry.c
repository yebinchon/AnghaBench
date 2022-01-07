
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocpf {int fw_mismatch_notified; TYPE_1__* ioc; } ;
struct TYPE_2__ {int iocpf_timer; } ;


 int BFA_IOC_TOV ;
 int bfa_ioc_pf_fwmismatch (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_mismatch_entry(struct bfa_iocpf *iocpf)
{

 if (!iocpf->fw_mismatch_notified)
  bfa_ioc_pf_fwmismatch(iocpf->ioc);

 iocpf->fw_mismatch_notified = 1;
 mod_timer(&(iocpf->ioc)->iocpf_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_TOV));
}
