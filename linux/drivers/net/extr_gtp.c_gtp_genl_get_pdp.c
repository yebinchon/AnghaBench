
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct pdp_ctx {int dummy; } ;
struct genl_info {int snd_portid; TYPE_1__* nlhdr; int snd_seq; int * attrs; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 size_t GTPA_VERSION ;
 scalar_t__ IS_ERR (struct pdp_ctx*) ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int PTR_ERR (struct pdp_ctx*) ;
 int genl_info_net (struct genl_info*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct pdp_ctx* gtp_find_pdp (int ,int *) ;
 int gtp_genl_fill_info (struct sk_buff*,int ,int ,int ,struct pdp_ctx*) ;
 int kfree_skb (struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int gtp_genl_get_pdp(struct sk_buff *skb, struct genl_info *info)
{
 struct pdp_ctx *pctx = ((void*)0);
 struct sk_buff *skb2;
 int err;

 if (!info->attrs[GTPA_VERSION])
  return -EINVAL;

 rcu_read_lock();

 pctx = gtp_find_pdp(sock_net(skb->sk), info->attrs);
 if (IS_ERR(pctx)) {
  err = PTR_ERR(pctx);
  goto err_unlock;
 }

 skb2 = genlmsg_new(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (skb2 == ((void*)0)) {
  err = -ENOMEM;
  goto err_unlock;
 }

 err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
     info->snd_seq, info->nlhdr->nlmsg_type, pctx);
 if (err < 0)
  goto err_unlock_free;

 rcu_read_unlock();
 return genlmsg_unicast(genl_info_net(info), skb2, info->snd_portid);

err_unlock_free:
 kfree_skb(skb2);
err_unlock:
 rcu_read_unlock();
 return err;
}
