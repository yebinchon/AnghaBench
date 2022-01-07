
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x_virtf {int link_cfg; } ;
struct bnx2x {int dummy; } ;


 struct bnx2x_virtf* BP_VF (struct bnx2x*,int) ;
 int EINVAL ;
 int bnx2x_iov_link_update_vf (struct bnx2x*,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

int bnx2x_set_vf_link_state(struct net_device *dev, int idx, int link_state)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct bnx2x_virtf *vf = BP_VF(bp, idx);

 if (!vf)
  return -EINVAL;

 if (vf->link_cfg == link_state)
  return 0;

 vf->link_cfg = link_state;

 return bnx2x_iov_link_update_vf(bp, idx);
}
