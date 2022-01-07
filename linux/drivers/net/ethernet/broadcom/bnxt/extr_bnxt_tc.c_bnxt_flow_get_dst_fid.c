
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int fw_fid; } ;
struct bnxt {TYPE_1__ pf; int dev; } ;


 int BNXT_FID_INVALID ;
 scalar_t__ bnxt_dev_is_vf_rep (struct net_device*) ;
 int bnxt_vf_rep_get_fid (struct net_device*) ;
 int netdev_info (int ,char*,int ) ;
 int netdev_port_same_parent_id (int ,struct net_device*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static u16 bnxt_flow_get_dst_fid(struct bnxt *pf_bp, struct net_device *dev)
{
 struct bnxt *bp;


 if (!netdev_port_same_parent_id(pf_bp->dev, dev)) {
  netdev_info(pf_bp->dev, "dev(ifindex=%d) not on same switch",
       dev->ifindex);
  return BNXT_FID_INVALID;
 }


 if (bnxt_dev_is_vf_rep(dev))
  return bnxt_vf_rep_get_fid(dev);

 bp = netdev_priv(dev);
 return bp->pf.fw_fid;
}
