
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int sk; } ;
struct gtp_dev {struct sock* sk1u; struct sock* sk0; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 int ENODEV ;
 size_t GTPA_FLOW ;
 size_t GTPA_I_TEI ;
 size_t GTPA_LINK ;
 size_t GTPA_MS_ADDRESS ;
 size_t GTPA_O_TEI ;
 size_t GTPA_PEER_ADDRESS ;
 size_t GTPA_TID ;
 size_t GTPA_VERSION ;


 struct gtp_dev* gtp_find_dev (int ,int *) ;
 int ipv4_pdp_add (struct gtp_dev*,struct sock*,struct genl_info*) ;
 unsigned int nla_get_u32 (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
{
 unsigned int version;
 struct gtp_dev *gtp;
 struct sock *sk;
 int err;

 if (!info->attrs[GTPA_VERSION] ||
     !info->attrs[GTPA_LINK] ||
     !info->attrs[GTPA_PEER_ADDRESS] ||
     !info->attrs[GTPA_MS_ADDRESS])
  return -EINVAL;

 version = nla_get_u32(info->attrs[GTPA_VERSION]);

 switch (version) {
 case 129:
  if (!info->attrs[GTPA_TID] ||
      !info->attrs[GTPA_FLOW])
   return -EINVAL;
  break;
 case 128:
  if (!info->attrs[GTPA_I_TEI] ||
      !info->attrs[GTPA_O_TEI])
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 rtnl_lock();
 rcu_read_lock();

 gtp = gtp_find_dev(sock_net(skb->sk), info->attrs);
 if (!gtp) {
  err = -ENODEV;
  goto out_unlock;
 }

 if (version == 129)
  sk = gtp->sk0;
 else if (version == 128)
  sk = gtp->sk1u;
 else
  sk = ((void*)0);

 if (!sk) {
  err = -ENODEV;
  goto out_unlock;
 }

 err = ipv4_pdp_add(gtp, sk, info);

out_unlock:
 rcu_read_unlock();
 rtnl_unlock();
 return err;
}
