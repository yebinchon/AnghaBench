
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct gtp_net {int gtp_dev_list; } ;
struct gtp_dev {int list; } ;


 int EINVAL ;
 size_t IFLA_GTP_FD0 ;
 size_t IFLA_GTP_FD1 ;
 size_t IFLA_GTP_PDP_HASHSIZE ;
 int dev_net (struct net_device*) ;
 int gtp_encap_disable (struct gtp_dev*) ;
 int gtp_encap_enable (struct gtp_dev*,struct nlattr**) ;
 int gtp_hashtable_free (struct gtp_dev*) ;
 int gtp_hashtable_new (struct gtp_dev*,int) ;
 int gtp_net_id ;
 int list_add_rcu (int *,int *) ;
 struct gtp_net* net_generic (int ,int ) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 struct gtp_dev* netdev_priv (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int gtp_newlink(struct net *src_net, struct net_device *dev,
         struct nlattr *tb[], struct nlattr *data[],
         struct netlink_ext_ack *extack)
{
 struct gtp_dev *gtp;
 struct gtp_net *gn;
 int hashsize, err;

 if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
  return -EINVAL;

 gtp = netdev_priv(dev);

 err = gtp_encap_enable(gtp, data);
 if (err < 0)
  return err;

 if (!data[IFLA_GTP_PDP_HASHSIZE])
  hashsize = 1024;
 else
  hashsize = nla_get_u32(data[IFLA_GTP_PDP_HASHSIZE]);

 err = gtp_hashtable_new(gtp, hashsize);
 if (err < 0)
  goto out_encap;

 err = register_netdevice(dev);
 if (err < 0) {
  netdev_dbg(dev, "failed to register new netdev %d\n", err);
  goto out_hashtable;
 }

 gn = net_generic(dev_net(dev), gtp_net_id);
 list_add_rcu(&gtp->list, &gn->gtp_dev_list);

 netdev_dbg(dev, "registered new GTP interface\n");

 return 0;

out_hashtable:
 gtp_hashtable_free(gtp);
out_encap:
 gtp_encap_disable(gtp);
 return err;
}
