
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hwsim_new_radio_params {int dummy; } ;
struct genl_info {int dummy; } ;


 int GENLMSG_DEFAULT_SIZE ;
 int GFP_KERNEL ;
 int HWSIM_CMD_NEW_RADIO ;
 scalar_t__ append_radio_msg (struct sk_buff*,int,struct hwsim_new_radio_params*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int hwsim_genl_family ;
 int hwsim_mcast_config_msg (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static void hwsim_mcast_new_radio(int id, struct genl_info *info,
      struct hwsim_new_radio_params *param)
{
 struct sk_buff *mcast_skb;
 void *data;

 mcast_skb = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!mcast_skb)
  return;

 data = genlmsg_put(mcast_skb, 0, 0, &hwsim_genl_family, 0,
      HWSIM_CMD_NEW_RADIO);
 if (!data)
  goto out_err;

 if (append_radio_msg(mcast_skb, id, param) < 0)
  goto out_err;

 genlmsg_end(mcast_skb, data);

 hwsim_mcast_config_msg(mcast_skb, info);
 return;

out_err:
 nlmsg_free(mcast_skb);
}
