
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;


 scalar_t__ nfp_net_reconfig_check_done (struct nfp_net*,int) ;
 int time_is_before_eq_jiffies (unsigned long) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool __nfp_net_reconfig_wait(struct nfp_net *nn, unsigned long deadline)
{
 bool timed_out = 0;
 int i;




 for (i = 0; i < 50; i++) {
  if (nfp_net_reconfig_check_done(nn, 0))
   return 0;
  udelay(4);
 }

 while (!nfp_net_reconfig_check_done(nn, timed_out)) {
  usleep_range(250, 500);
  timed_out = time_is_before_eq_jiffies(deadline);
 }

 return timed_out;
}
