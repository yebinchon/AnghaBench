
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct mac80211_hwsim_data {int ps; int ps_poll_pending; } ;






 int mac80211_hwsim_addr_match (struct mac80211_hwsim_data*,int ) ;

__attribute__((used)) static bool hwsim_ps_rx_ok(struct mac80211_hwsim_data *data,
      struct sk_buff *skb)
{
 switch (data->ps) {
 case 130:
  return 1;
 case 129:
  return 0;
 case 131:


  return 1;
 case 128:


  if (data->ps_poll_pending &&
      mac80211_hwsim_addr_match(data, skb->data + 4)) {
   data->ps_poll_pending = 0;
   return 1;
  }
  return 0;
 }

 return 1;
}
