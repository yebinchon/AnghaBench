
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; int numdisabled; int numqueues; int group; int owner; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int EMSGSIZE ;
 int IFF_MULTI_QUEUE ;
 int IFF_NO_PI ;
 int IFF_PERSIST ;
 int IFF_VNET_HDR ;
 int IFLA_TUN_GROUP ;
 int IFLA_TUN_MULTI_QUEUE ;
 int IFLA_TUN_NUM_DISABLED_QUEUES ;
 int IFLA_TUN_NUM_QUEUES ;
 int IFLA_TUN_OWNER ;
 int IFLA_TUN_PERSIST ;
 int IFLA_TUN_PI ;
 int IFLA_TUN_TYPE ;
 int IFLA_TUN_VNET_HDR ;
 int TUN_TYPE_MASK ;
 int current_user_ns () ;
 int from_kgid_munged (int ,int ) ;
 int from_kuid_munged (int ,int ) ;
 scalar_t__ gid_valid (int ) ;
 struct tun_struct* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int tun_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 if (nla_put_u8(skb, IFLA_TUN_TYPE, tun->flags & TUN_TYPE_MASK))
  goto nla_put_failure;
 if (uid_valid(tun->owner) &&
     nla_put_u32(skb, IFLA_TUN_OWNER,
   from_kuid_munged(current_user_ns(), tun->owner)))
  goto nla_put_failure;
 if (gid_valid(tun->group) &&
     nla_put_u32(skb, IFLA_TUN_GROUP,
   from_kgid_munged(current_user_ns(), tun->group)))
  goto nla_put_failure;
 if (nla_put_u8(skb, IFLA_TUN_PI, !(tun->flags & IFF_NO_PI)))
  goto nla_put_failure;
 if (nla_put_u8(skb, IFLA_TUN_VNET_HDR, !!(tun->flags & IFF_VNET_HDR)))
  goto nla_put_failure;
 if (nla_put_u8(skb, IFLA_TUN_PERSIST, !!(tun->flags & IFF_PERSIST)))
  goto nla_put_failure;
 if (nla_put_u8(skb, IFLA_TUN_MULTI_QUEUE,
         !!(tun->flags & IFF_MULTI_QUEUE)))
  goto nla_put_failure;
 if (tun->flags & IFF_MULTI_QUEUE) {
  if (nla_put_u32(skb, IFLA_TUN_NUM_QUEUES, tun->numqueues))
   goto nla_put_failure;
  if (nla_put_u32(skb, IFLA_TUN_NUM_DISABLED_QUEUES,
    tun->numdisabled))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
