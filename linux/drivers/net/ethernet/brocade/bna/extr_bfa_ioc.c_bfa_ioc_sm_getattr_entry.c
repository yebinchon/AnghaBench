
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int ioc_timer; } ;


 int BFA_IOC_TOV ;
 int bfa_ioc_send_getattr (struct bfa_ioc*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void
bfa_ioc_sm_getattr_entry(struct bfa_ioc *ioc)
{
 mod_timer(&ioc->ioc_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_TOV));
 bfa_ioc_send_getattr(ioc);
}
