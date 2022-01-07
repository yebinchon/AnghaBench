
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct sk_buff {int dummy; } ;
struct brcms_c_info {void* beacon_dtim_period; void* beacon_tim_offset; struct sk_buff* beacon; } ;


 int D11_PHY_HDR_LEN ;
 int brcms_c_update_beacon (struct brcms_c_info*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

void brcms_c_set_new_beacon(struct brcms_c_info *wlc, struct sk_buff *beacon,
       u16 tim_offset, u16 dtim_period)
{
 if (!beacon)
  return;
 if (wlc->beacon)
  dev_kfree_skb_any(wlc->beacon);
 wlc->beacon = beacon;


 skb_push(wlc->beacon, D11_PHY_HDR_LEN);
 wlc->beacon_tim_offset = tim_offset;
 wlc->beacon_dtim_period = dtim_period;
 brcms_c_update_beacon(wlc);
}
