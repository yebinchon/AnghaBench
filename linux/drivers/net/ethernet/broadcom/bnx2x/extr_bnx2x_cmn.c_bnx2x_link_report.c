
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int __bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;

void bnx2x_link_report(struct bnx2x *bp)
{
 bnx2x_acquire_phy_lock(bp);
 __bnx2x_link_report(bp);
 bnx2x_release_phy_lock(bp);
}
