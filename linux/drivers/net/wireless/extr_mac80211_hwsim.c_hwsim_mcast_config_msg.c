
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int GFP_KERNEL ;
 int HWSIM_MCGRP_CONFIG ;
 int genl_notify (int *,struct sk_buff*,struct genl_info*,int ,int ) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 int hwsim_genl_family ;

__attribute__((used)) static void hwsim_mcast_config_msg(struct sk_buff *mcast_skb,
       struct genl_info *info)
{
 if (info)
  genl_notify(&hwsim_genl_family, mcast_skb, info,
       HWSIM_MCGRP_CONFIG, GFP_KERNEL);
 else
  genlmsg_multicast(&hwsim_genl_family, mcast_skb, 0,
      HWSIM_MCGRP_CONFIG, GFP_KERNEL);
}
