
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct wmi_phyerr_hdr_arg {int num_phyerrs; int buf_len; int tsf_u32; int tsf_l32; void* phyerrs; } ;
struct wmi_phyerr_ev_arg {int hdr_len; int buf_len; int phy_err_code; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ATH10K_DFS_STAT_INC (struct ath10k*,int ) ;



 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_event_dfs (struct ath10k*,struct wmi_phyerr_ev_arg*,int) ;
 int ath10k_wmi_event_spectral_scan (struct ath10k*,struct wmi_phyerr_ev_arg*,int) ;
 int ath10k_wmi_pull_phyerr (struct ath10k*,void const*,int,struct wmi_phyerr_ev_arg*) ;
 int ath10k_wmi_pull_phyerr_hdr (struct ath10k*,struct sk_buff*,struct wmi_phyerr_hdr_arg*) ;
 int phy_errors ;

void ath10k_wmi_event_phyerr(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_phyerr_hdr_arg hdr_arg = {};
 struct wmi_phyerr_ev_arg phyerr_arg = {};
 const void *phyerr;
 u32 count, i, buf_len, phy_err_code;
 u64 tsf;
 int left_len, ret;

 ATH10K_DFS_STAT_INC(ar, phy_errors);

 ret = ath10k_wmi_pull_phyerr_hdr(ar, skb, &hdr_arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse phyerr event hdr: %d\n", ret);
  return;
 }


 count = hdr_arg.num_phyerrs;

 left_len = hdr_arg.buf_len;

 tsf = hdr_arg.tsf_u32;
 tsf <<= 32;
 tsf |= hdr_arg.tsf_l32;

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi event phyerr count %d tsf64 0x%llX\n",
     count, tsf);

 phyerr = hdr_arg.phyerrs;
 for (i = 0; i < count; i++) {
  ret = ath10k_wmi_pull_phyerr(ar, phyerr, left_len, &phyerr_arg);
  if (ret) {
   ath10k_warn(ar, "failed to parse phyerr event (%d)\n",
        i);
   return;
  }

  left_len -= phyerr_arg.hdr_len;
  buf_len = phyerr_arg.buf_len;
  phy_err_code = phyerr_arg.phy_err_code;

  if (left_len < buf_len) {
   ath10k_warn(ar, "single event (%d) wrong buf len\n", i);
   return;
  }

  left_len -= buf_len;

  switch (phy_err_code) {
  case 129:
   ath10k_wmi_event_dfs(ar, &phyerr_arg, tsf);
   break;
  case 128:
   ath10k_wmi_event_spectral_scan(ar, &phyerr_arg, tsf);
   break;
  case 130:
   ath10k_wmi_event_dfs(ar, &phyerr_arg, tsf);
   ath10k_wmi_event_spectral_scan(ar, &phyerr_arg, tsf);
   break;
  default:
   break;
  }

  phyerr = phyerr + phyerr_arg.hdr_len + buf_len;
 }
}
