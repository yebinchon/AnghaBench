
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dummy; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int HARD_ACS_RDY_POLL_NS ;
 scalar_t__ WARN_ON (int) ;
 int hard_acs_rdy (struct temac_local*) ;
 int hard_acs_rdy_or_timeout (struct temac_local*,int ) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;
 int spin_until_cond (int ) ;

int temac_indirect_busywait(struct temac_local *lp)
{
 ktime_t timeout = ktime_add_ns(ktime_get(), HARD_ACS_RDY_POLL_NS);

 spin_until_cond(hard_acs_rdy_or_timeout(lp, timeout));
 if (WARN_ON(!hard_acs_rdy(lp)))
  return -ETIMEDOUT;
 else
  return 0;
}
