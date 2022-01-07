
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocpf {TYPE_1__* ioc; } ;
struct TYPE_2__ {int iocpf_timer; } ;


 int BFA_IOC_TOV ;
 int bfa_ioc_send_disable (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_disabling_entry(struct bfa_iocpf *iocpf)
{
 mod_timer(&(iocpf->ioc)->iocpf_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_TOV));
 bfa_ioc_send_disable(iocpf->ioc);
}
