
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ IS_PF (struct bnx2x*) ;
 int bnx2x_ethtool_ops ;
 int bnx2x_vf_ethtool_ops ;

void bnx2x_set_ethtool_ops(struct bnx2x *bp, struct net_device *netdev)
{
 netdev->ethtool_ops = (IS_PF(bp)) ?
  &bnx2x_ethtool_ops : &bnx2x_vf_ethtool_ops;
}
