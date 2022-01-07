
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_MAX_QUEUES (struct bnx2x*) ;
 scalar_t__ bnx2x_num_queues ;
 int clamp (int,int,int ) ;
 scalar_t__ is_kdump_kernel () ;
 int netif_get_num_default_rss_queues () ;

__attribute__((used)) static int bnx2x_calc_num_queues(struct bnx2x *bp)
{
 int nq = bnx2x_num_queues ? : netif_get_num_default_rss_queues();


 if (is_kdump_kernel())
  nq = 1;

 nq = clamp(nq, 1, BNX2X_MAX_QUEUES(bp));
 return nq;
}
