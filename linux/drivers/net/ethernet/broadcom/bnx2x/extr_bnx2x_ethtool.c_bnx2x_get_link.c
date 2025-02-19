
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int link_up; } ;
struct TYPE_3__ {int link_report_flags; } ;
struct bnx2x {int flags; scalar_t__ state; TYPE_2__ link_vars; TYPE_1__ vf_link_vars; } ;


 int BNX2X_LINK_REPORT_LINK_DOWN ;
 scalar_t__ BNX2X_STATE_OPEN ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int MF_FUNC_DIS ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u32 bnx2x_get_link(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (bp->flags & MF_FUNC_DIS || (bp->state != BNX2X_STATE_OPEN))
  return 0;

 if (IS_VF(bp))
  return !test_bit(BNX2X_LINK_REPORT_LINK_DOWN,
     &bp->vf_link_vars.link_report_flags);

 return bp->link_vars.link_up;
}
