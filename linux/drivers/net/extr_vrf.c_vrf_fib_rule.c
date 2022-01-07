
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct net_device {int dummy; } ;
struct fib_rule_hdr {int action; scalar_t__ family; } ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {int rtnl; } ;


 scalar_t__ AF_INET6 ;
 int EEXIST ;
 int EMSGSIZE ;
 int ENOENT ;
 int ENOMEM ;
 int FIB_RULE_PREF ;
 int FRA_L3MDEV ;
 int FRA_PRIORITY ;
 int FRA_PROTOCOL ;
 int FR_ACT_TO_TBL ;
 int GFP_KERNEL ;
 int NLM_F_EXCL ;
 scalar_t__ RTNL_FAMILY_IP6MR ;
 int RTPROT_KERNEL ;
 TYPE_1__* dev_net (struct net_device const*) ;
 int fib_nl_delrule (struct sk_buff*,struct nlmsghdr*,int *) ;
 int fib_nl_newrule (struct sk_buff*,struct nlmsghdr*,int *) ;
 int ipv6_mod_enabled () ;
 int memset (struct fib_rule_hdr*,int ,int) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 struct fib_rule_hdr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int vrf_fib_rule_nl_size () ;

__attribute__((used)) static int vrf_fib_rule(const struct net_device *dev, __u8 family, bool add_it)
{
 struct fib_rule_hdr *frh;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 int err;

 if ((family == AF_INET6 || family == RTNL_FAMILY_IP6MR) &&
     !ipv6_mod_enabled())
  return 0;

 skb = nlmsg_new(vrf_fib_rule_nl_size(), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 nlh = nlmsg_put(skb, 0, 0, 0, sizeof(*frh), 0);
 if (!nlh)
  goto nla_put_failure;


 nlh->nlmsg_flags |= NLM_F_EXCL;

 frh = nlmsg_data(nlh);
 memset(frh, 0, sizeof(*frh));
 frh->family = family;
 frh->action = FR_ACT_TO_TBL;

 if (nla_put_u8(skb, FRA_PROTOCOL, RTPROT_KERNEL))
  goto nla_put_failure;

 if (nla_put_u8(skb, FRA_L3MDEV, 1))
  goto nla_put_failure;

 if (nla_put_u32(skb, FRA_PRIORITY, FIB_RULE_PREF))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);


 skb->sk = dev_net(dev)->rtnl;
 if (add_it) {
  err = fib_nl_newrule(skb, nlh, ((void*)0));
  if (err == -EEXIST)
   err = 0;
 } else {
  err = fib_nl_delrule(skb, nlh, ((void*)0));
  if (err == -ENOENT)
   err = 0;
 }
 nlmsg_free(skb);

 return err;

nla_put_failure:
 nlmsg_free(skb);

 return -EMSGSIZE;
}
