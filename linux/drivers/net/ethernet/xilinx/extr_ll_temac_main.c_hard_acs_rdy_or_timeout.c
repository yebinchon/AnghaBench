
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dummy; } ;
typedef int ktime_t ;


 scalar_t__ hard_acs_rdy (struct temac_local*) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static bool hard_acs_rdy_or_timeout(struct temac_local *lp, ktime_t timeout)
{
 ktime_t cur = ktime_get();

 return hard_acs_rdy(lp) || ktime_after(cur, timeout);
}
