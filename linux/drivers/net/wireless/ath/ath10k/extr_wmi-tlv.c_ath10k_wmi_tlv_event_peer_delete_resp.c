
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv {scalar_t__ value; } ;
struct wmi_peer_delete_resp_ev_arg {int peer_addr; int vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int peer_delete_done; } ;


 int ATH10K_DBG_WMI ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int complete (int *) ;

__attribute__((used)) static int ath10k_wmi_tlv_event_peer_delete_resp(struct ath10k *ar,
       struct sk_buff *skb)
{
 struct wmi_peer_delete_resp_ev_arg *arg;
 struct wmi_tlv *tlv_hdr;

 tlv_hdr = (struct wmi_tlv *)skb->data;
 arg = (struct wmi_peer_delete_resp_ev_arg *)tlv_hdr->value;

 ath10k_dbg(ar, ATH10K_DBG_WMI, "vdev id %d", arg->vdev_id);
 ath10k_dbg(ar, ATH10K_DBG_WMI, "peer mac addr %pM", &arg->peer_addr);
 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv peer delete response\n");

 complete(&ar->peer_delete_done);

 return 0;
}
