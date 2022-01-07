
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_peer_sta_kickout_event {TYPE_1__ peer_macaddr; } ;
struct wmi_peer_kick_ev_arg {int mac_addr; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_STRUCT_PEER_STA_KICKOUT_EVENT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_peer_kick_ev(struct ath10k *ar,
            struct sk_buff *skb,
            struct wmi_peer_kick_ev_arg *arg)
{
 const void **tb;
 const struct wmi_peer_sta_kickout_event *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_PEER_STA_KICKOUT_EVENT];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 arg->mac_addr = ev->peer_macaddr.addr;

 kfree(tb);
 return 0;
}
