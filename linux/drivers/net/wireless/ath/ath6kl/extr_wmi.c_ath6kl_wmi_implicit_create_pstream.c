
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_data_hdr {int info2; } ;
struct wmi_create_pstream_cmd {int traffic_class; int user_pri; int tsid; int inactivity_int; } ;
struct wmi {scalar_t__ traffic_class; int fat_pipe_exist; int lock; } ;
struct sk_buff {int* data; scalar_t__ protocol; } ;
struct ethhdr {int dummy; } ;
struct ath6kl_llc_snap_hdr {scalar_t__ eth_type; } ;
typedef int cmd ;


 int EINVAL ;
 int ETH_P_PAE ;
 int IP_ETHERTYPE ;
 scalar_t__ WARN_ON (int ) ;
 int WMI_DATA_HDR_META_MASK ;
 int WMI_DATA_HDR_META_SHIFT ;
 int WMI_IMPLICIT_PSTREAM ;
 int WMI_IMPLICIT_PSTREAM_INACTIVITY_INT ;
 int WMI_MAX_TX_META_SZ ;
 int WMI_VOICE_USER_PRIORITY ;
 int WMM_AC_BE ;
 scalar_t__ WMM_AC_VI ;
 int ath6kl_wmi_create_pstream_cmd (struct wmi*,int,struct wmi_create_pstream_cmd*) ;
 int ath6kl_wmi_determine_user_priority (int*,int) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ htons (int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct wmi_create_pstream_cmd*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int* up_to_ac ;
 int wmi_data_hdr_set_up (struct wmi_data_hdr*,int) ;

int ath6kl_wmi_implicit_create_pstream(struct wmi *wmi, u8 if_idx,
           struct sk_buff *skb,
           u32 layer2_priority, bool wmm_enabled,
           u8 *ac)
{
 struct wmi_data_hdr *data_hdr;
 struct ath6kl_llc_snap_hdr *llc_hdr;
 struct wmi_create_pstream_cmd cmd;
 u32 meta_size, hdr_size;
 u16 ip_type = IP_ETHERTYPE;
 u8 stream_exist, usr_pri;
 u8 traffic_class = WMM_AC_BE;
 u8 *datap;

 if (WARN_ON(skb == ((void*)0)))
  return -EINVAL;

 datap = skb->data;
 data_hdr = (struct wmi_data_hdr *) datap;

 meta_size = ((le16_to_cpu(data_hdr->info2) >> WMI_DATA_HDR_META_SHIFT) &
       WMI_DATA_HDR_META_MASK) ? WMI_MAX_TX_META_SZ : 0;

 if (!wmm_enabled) {

  usr_pri = 0;
 } else {
  hdr_size = sizeof(struct ethhdr);

  llc_hdr = (struct ath6kl_llc_snap_hdr *)(datap +
        sizeof(struct
        wmi_data_hdr) +
        meta_size + hdr_size);

  if (llc_hdr->eth_type == htons(ip_type)) {




   usr_pri =
      ath6kl_wmi_determine_user_priority(((u8 *) llc_hdr) +
     sizeof(struct ath6kl_llc_snap_hdr),
     layer2_priority);
  } else {
   usr_pri = layer2_priority & 0x7;
  }





  if (skb->protocol == cpu_to_be16(ETH_P_PAE))
   usr_pri = WMI_VOICE_USER_PRIORITY;
 }







 if ((wmi->traffic_class == WMM_AC_VI) &&
     ((usr_pri == 5) || (usr_pri == 4)))
  usr_pri = 1;


 traffic_class = up_to_ac[usr_pri & 0x7];

 wmi_data_hdr_set_up(data_hdr, usr_pri);

 spin_lock_bh(&wmi->lock);
 stream_exist = wmi->fat_pipe_exist;
 spin_unlock_bh(&wmi->lock);

 if (!(stream_exist & (1 << traffic_class))) {
  memset(&cmd, 0, sizeof(cmd));
  cmd.traffic_class = traffic_class;
  cmd.user_pri = usr_pri;
  cmd.inactivity_int =
   cpu_to_le32(WMI_IMPLICIT_PSTREAM_INACTIVITY_INT);

  cmd.tsid = WMI_IMPLICIT_PSTREAM;
  ath6kl_wmi_create_pstream_cmd(wmi, if_idx, &cmd);
 }

 *ac = traffic_class;

 return 0;
}
