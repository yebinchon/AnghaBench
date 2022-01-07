
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int dev; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_NEIGH ;
 int WARN_ON (int) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;
 int vxlan_fdb_info (struct sk_buff*,struct vxlan_dev*,struct vxlan_fdb*,int ,int ,int,int ,struct vxlan_rdst*) ;
 int vxlan_nlmsg_size () ;

__attribute__((used)) static void __vxlan_fdb_notify(struct vxlan_dev *vxlan, struct vxlan_fdb *fdb,
          struct vxlan_rdst *rd, int type)
{
 struct net *net = dev_net(vxlan->dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(vxlan_nlmsg_size(), GFP_ATOMIC);
 if (skb == ((void*)0))
  goto errout;

 err = vxlan_fdb_info(skb, vxlan, fdb, 0, 0, type, 0, rd);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, ((void*)0), GFP_ATOMIC);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
}
