
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct wmi_phyerr_ev_arg {int buf_len; int * buf; int tsf_timestamp; int rssi_combined; int phy_err_code; } ;
struct phyerr_tlv {int tag; int sig; int len; } ;
struct phyerr_radar_report {int dummy; } ;
struct phyerr_fft_report {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_REGULATORY ;
 int ATH10K_DFS_STAT_INC (struct ath10k*,int ) ;
 int CONFIG_ATH10K_DFS_CERTIFIED ;
 int IS_ENABLED (int ) ;


 int __le16_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int ,...) ;
 int ath10k_dfs_fft_report (struct ath10k*,struct wmi_phyerr_ev_arg*,struct phyerr_fft_report const*,int ) ;
 int ath10k_dfs_radar_report (struct ath10k*,struct wmi_phyerr_ev_arg*,struct phyerr_radar_report const*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int pulses_total ;

void ath10k_wmi_event_dfs(struct ath10k *ar,
     struct wmi_phyerr_ev_arg *phyerr,
     u64 tsf)
{
 int buf_len, tlv_len, res, i = 0;
 const struct phyerr_tlv *tlv;
 const struct phyerr_radar_report *rr;
 const struct phyerr_fft_report *fftr;
 const u8 *tlv_buf;

 buf_len = phyerr->buf_len;
 ath10k_dbg(ar, ATH10K_DBG_REGULATORY,
     "wmi event dfs err_code %d rssi %d tsfl 0x%X tsf64 0x%llX len %d\n",
     phyerr->phy_err_code, phyerr->rssi_combined,
     phyerr->tsf_timestamp, tsf, buf_len);


 if (!IS_ENABLED(CONFIG_ATH10K_DFS_CERTIFIED))
  return;

 ATH10K_DFS_STAT_INC(ar, pulses_total);

 while (i < buf_len) {
  if (i + sizeof(*tlv) > buf_len) {
   ath10k_warn(ar, "too short buf for tlv header (%d)\n",
        i);
   return;
  }

  tlv = (struct phyerr_tlv *)&phyerr->buf[i];
  tlv_len = __le16_to_cpu(tlv->len);
  tlv_buf = &phyerr->buf[i + sizeof(*tlv)];
  ath10k_dbg(ar, ATH10K_DBG_REGULATORY,
      "wmi event dfs tlv_len %d tlv_tag 0x%02X tlv_sig 0x%02X\n",
      tlv_len, tlv->tag, tlv->sig);

  switch (tlv->tag) {
  case 129:
   if (i + sizeof(*tlv) + sizeof(*rr) > buf_len) {
    ath10k_warn(ar, "too short radar pulse summary (%d)\n",
         i);
    return;
   }

   rr = (struct phyerr_radar_report *)tlv_buf;
   ath10k_dfs_radar_report(ar, phyerr, rr, tsf);
   break;
  case 128:
   if (i + sizeof(*tlv) + sizeof(*fftr) > buf_len) {
    ath10k_warn(ar, "too short fft report (%d)\n",
         i);
    return;
   }

   fftr = (struct phyerr_fft_report *)tlv_buf;
   res = ath10k_dfs_fft_report(ar, phyerr, fftr, tsf);
   if (res)
    return;
   break;
  }

  i += sizeof(*tlv) + tlv_len;
 }
}
