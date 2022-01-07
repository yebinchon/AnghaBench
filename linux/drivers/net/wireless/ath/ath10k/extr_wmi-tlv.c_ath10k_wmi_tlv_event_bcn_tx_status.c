
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmi_tlv_bcn_tx_status_ev {int vdev_id; int tx_status; } ;
struct sk_buff {int len; int data; } ;
struct ath10k_vif {int ap_csa_work; TYPE_1__* vif; scalar_t__ is_up; } ;
struct ath10k {int hw; } ;
struct TYPE_2__ {scalar_t__ csa_active; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;




 size_t WMI_TLV_TAG_STRUCT_OFFLOAD_BCN_TX_STATUS_EVENT ;
 int __le32_to_cpu (int ) ;
 struct ath10k_vif* ath10k_get_arvif (struct ath10k*,int) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int kfree (void const**) ;

__attribute__((used)) static int ath10k_wmi_tlv_event_bcn_tx_status(struct ath10k *ar,
           struct sk_buff *skb)
{
 const void **tb;
 const struct wmi_tlv_bcn_tx_status_ev *ev;
 struct ath10k_vif *arvif;
 u32 vdev_id, tx_status;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_OFFLOAD_BCN_TX_STATUS_EVENT];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 tx_status = __le32_to_cpu(ev->tx_status);
 vdev_id = __le32_to_cpu(ev->vdev_id);

 switch (tx_status) {
 case 129:
  break;
 case 128:
 case 131:
 case 130:



  ath10k_warn(ar, "received bcn tmpl tx status on vdev %i: %d",
       vdev_id, tx_status);
  break;
 }

 arvif = ath10k_get_arvif(ar, vdev_id);
 if (arvif && arvif->is_up && arvif->vif->csa_active)
  ieee80211_queue_work(ar->hw, &arvif->ap_csa_work);

 kfree(tb);
 return 0;
}
