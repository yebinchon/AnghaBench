
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct brcms_c_info {struct sk_buff* probe_resp; } ;


 int D11_PHY_HDR_LEN ;
 int brcms_c_update_probe_resp (struct brcms_c_info*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

void brcms_c_set_new_probe_resp(struct brcms_c_info *wlc,
    struct sk_buff *probe_resp)
{
 if (!probe_resp)
  return;
 if (wlc->probe_resp)
  dev_kfree_skb_any(wlc->probe_resp);
 wlc->probe_resp = probe_resp;


 skb_push(wlc->probe_resp, D11_PHY_HDR_LEN);
 brcms_c_update_probe_resp(wlc, 0);
}
