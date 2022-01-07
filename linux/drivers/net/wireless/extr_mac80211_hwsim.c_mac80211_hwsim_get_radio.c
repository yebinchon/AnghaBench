
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct mac80211_hwsim_data {int idx; TYPE_1__* hw; int channels; int regd; int use_chanctx; scalar_t__* alpha2; } ;
struct hwsim_new_radio_params {int reg_strict; int p2p_device; int hwname; int channels; int regd; int use_chanctx; scalar_t__* reg_alpha2; } ;
struct TYPE_4__ {int regulatory_flags; int interface_modes; } ;
struct TYPE_3__ {TYPE_2__* wiphy; } ;


 int BIT (int ) ;
 int EMSGSIZE ;
 int HWSIM_CMD_GET_RADIO ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int REGULATORY_STRICT_REG ;
 int append_radio_msg (struct sk_buff*,int ,struct hwsim_new_radio_params*) ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int hwsim_genl_family ;
 int wiphy_name (TYPE_2__*) ;

__attribute__((used)) static int mac80211_hwsim_get_radio(struct sk_buff *skb,
        struct mac80211_hwsim_data *data,
        u32 portid, u32 seq,
        struct netlink_callback *cb, int flags)
{
 void *hdr;
 struct hwsim_new_radio_params param = { };
 int res = -EMSGSIZE;

 hdr = genlmsg_put(skb, portid, seq, &hwsim_genl_family, flags,
     HWSIM_CMD_GET_RADIO);
 if (!hdr)
  return -EMSGSIZE;

 if (cb)
  genl_dump_check_consistent(cb, hdr);

 if (data->alpha2[0] && data->alpha2[1])
  param.reg_alpha2 = data->alpha2;

 param.reg_strict = !!(data->hw->wiphy->regulatory_flags &
     REGULATORY_STRICT_REG);
 param.p2p_device = !!(data->hw->wiphy->interface_modes &
     BIT(NL80211_IFTYPE_P2P_DEVICE));
 param.use_chanctx = data->use_chanctx;
 param.regd = data->regd;
 param.channels = data->channels;
 param.hwname = wiphy_name(data->hw->wiphy);

 res = append_radio_msg(skb, data->idx, &param);
 if (res < 0)
  goto out_err;

 genlmsg_end(skb, hdr);
 return 0;

out_err:
 genlmsg_cancel(skb, hdr);
 return res;
}
