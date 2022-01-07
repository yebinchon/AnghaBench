
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hwsim_new_radio_params {int channels; scalar_t__ regd; scalar_t__ hwname; scalar_t__ use_chanctx; scalar_t__ p2p_device; scalar_t__ reg_strict; scalar_t__ reg_alpha2; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int HWSIM_ATTR_CHANNELS ;
 int HWSIM_ATTR_RADIO_ID ;
 int HWSIM_ATTR_RADIO_NAME ;
 int HWSIM_ATTR_REG_CUSTOM_REG ;
 int HWSIM_ATTR_REG_HINT_ALPHA2 ;
 int HWSIM_ATTR_REG_STRICT_REG ;
 int HWSIM_ATTR_SUPPORT_P2P_DEVICE ;
 int HWSIM_ATTR_USE_CHANCTX ;
 scalar_t__* hwsim_world_regdom_custom ;
 int nla_put (struct sk_buff*,int ,int,scalar_t__) ;
 int nla_put_flag (struct sk_buff*,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int append_radio_msg(struct sk_buff *skb, int id,
       struct hwsim_new_radio_params *param)
{
 int ret;

 ret = nla_put_u32(skb, HWSIM_ATTR_RADIO_ID, id);
 if (ret < 0)
  return ret;

 if (param->channels) {
  ret = nla_put_u32(skb, HWSIM_ATTR_CHANNELS, param->channels);
  if (ret < 0)
   return ret;
 }

 if (param->reg_alpha2) {
  ret = nla_put(skb, HWSIM_ATTR_REG_HINT_ALPHA2, 2,
         param->reg_alpha2);
  if (ret < 0)
   return ret;
 }

 if (param->regd) {
  int i;

  for (i = 0; i < ARRAY_SIZE(hwsim_world_regdom_custom); i++) {
   if (hwsim_world_regdom_custom[i] != param->regd)
    continue;

   ret = nla_put_u32(skb, HWSIM_ATTR_REG_CUSTOM_REG, i);
   if (ret < 0)
    return ret;
   break;
  }
 }

 if (param->reg_strict) {
  ret = nla_put_flag(skb, HWSIM_ATTR_REG_STRICT_REG);
  if (ret < 0)
   return ret;
 }

 if (param->p2p_device) {
  ret = nla_put_flag(skb, HWSIM_ATTR_SUPPORT_P2P_DEVICE);
  if (ret < 0)
   return ret;
 }

 if (param->use_chanctx) {
  ret = nla_put_flag(skb, HWSIM_ATTR_USE_CHANCTX);
  if (ret < 0)
   return ret;
 }

 if (param->hwname) {
  ret = nla_put(skb, HWSIM_ATTR_RADIO_NAME,
         strlen(param->hwname), param->hwname);
  if (ret < 0)
   return ret;
 }

 return 0;
}
