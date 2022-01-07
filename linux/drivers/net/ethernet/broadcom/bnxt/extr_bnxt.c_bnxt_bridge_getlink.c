
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bnxt {int br_mode; } ;


 int ndo_dflt_bridge_getlink (struct sk_buff*,int ,int ,struct net_device*,int ,int ,int ,int,int ,int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
          struct net_device *dev, u32 filter_mask,
          int nlflags)
{
 struct bnxt *bp = netdev_priv(dev);

 return ndo_dflt_bridge_getlink(skb, pid, seq, dev, bp->br_mode, 0, 0,
           nlflags, filter_mask, ((void*)0));
}
