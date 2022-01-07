
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_proto; } ;
struct ath6kl_vif {int fw_vif_idx; int flags; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; int apsd_info; int aid; int psq_lock; int apsdq; } ;
struct ath6kl_llc_snap_hdr {int eth_type; } ;
struct ath6kl {int wmi; } ;


 scalar_t__ IP_ETHERTYPE ;
 int STA_PS_APSD_EOSP ;
 int STA_PS_APSD_TRIGGER ;
 int WMI_DATA_HDR_FLAGS_EOSP ;
 int WMI_DATA_HDR_FLAGS_MORE ;
 int WMI_DATA_HDR_FLAGS_UAPSD ;
 int WMM_ENABLED ;
 int ath6kl_wmi_determine_user_priority (int*,int ) ;
 int ath6kl_wmi_get_traffic_class (int) ;
 int ath6kl_wmi_set_apsd_bfrd_traf (int ,int ,int ,int,int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ is_ethertype (scalar_t__) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ath6kl_process_uapsdq(struct ath6kl_sta *conn,
    struct ath6kl_vif *vif,
    struct sk_buff *skb,
    u32 *flags)
{
 struct ath6kl *ar = vif->ar;
 bool is_apsdq_empty = 0;
 struct ethhdr *datap = (struct ethhdr *) skb->data;
 u8 up = 0, traffic_class, *ip_hdr;
 u16 ether_type;
 struct ath6kl_llc_snap_hdr *llc_hdr;

 if (conn->sta_flags & STA_PS_APSD_TRIGGER) {





  spin_lock_bh(&conn->psq_lock);
  if (!skb_queue_empty(&conn->apsdq))
   *flags |= WMI_DATA_HDR_FLAGS_MORE;
  else if (conn->sta_flags & STA_PS_APSD_EOSP)
   *flags |= WMI_DATA_HDR_FLAGS_EOSP;
  *flags |= WMI_DATA_HDR_FLAGS_UAPSD;
  spin_unlock_bh(&conn->psq_lock);
  return 0;
 } else if (!conn->apsd_info) {
  return 0;
 }

 if (test_bit(WMM_ENABLED, &vif->flags)) {
  ether_type = be16_to_cpu(datap->h_proto);
  if (is_ethertype(ether_type)) {

   ip_hdr = (u8 *)(datap + 1);
  } else {

   llc_hdr = (struct ath6kl_llc_snap_hdr *)
       (datap + 1);
   ether_type = be16_to_cpu(llc_hdr->eth_type);
   ip_hdr = (u8 *)(llc_hdr + 1);
  }

  if (ether_type == IP_ETHERTYPE)
   up = ath6kl_wmi_determine_user_priority(
       ip_hdr, 0);
 }

 traffic_class = ath6kl_wmi_get_traffic_class(up);

 if ((conn->apsd_info & (1 << traffic_class)) == 0)
  return 0;


 spin_lock_bh(&conn->psq_lock);
 is_apsdq_empty = skb_queue_empty(&conn->apsdq);
 skb_queue_tail(&conn->apsdq, skb);
 spin_unlock_bh(&conn->psq_lock);





 if (is_apsdq_empty) {
  ath6kl_wmi_set_apsd_bfrd_traf(ar->wmi,
           vif->fw_vif_idx,
           conn->aid, 1, 0);
 }
 *flags |= WMI_DATA_HDR_FLAGS_UAPSD;

 return 1;
}
