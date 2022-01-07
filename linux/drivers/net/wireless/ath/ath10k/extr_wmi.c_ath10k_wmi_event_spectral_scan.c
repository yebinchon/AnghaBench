
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wmi_phyerr_ev_arg {int buf_len; int * buf; } ;
struct phyerr_tlv {int tag; int len; } ;
struct phyerr_fft_report {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;

 int __le16_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_spectral_process_fft (struct ath10k*,struct wmi_phyerr_ev_arg*,struct phyerr_fft_report const*,size_t,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;

void ath10k_wmi_event_spectral_scan(struct ath10k *ar,
        struct wmi_phyerr_ev_arg *phyerr,
        u64 tsf)
{
 int buf_len, tlv_len, res, i = 0;
 struct phyerr_tlv *tlv;
 const void *tlv_buf;
 const struct phyerr_fft_report *fftr;
 size_t fftr_len;

 buf_len = phyerr->buf_len;

 while (i < buf_len) {
  if (i + sizeof(*tlv) > buf_len) {
   ath10k_warn(ar, "failed to parse phyerr tlv header at byte %d\n",
        i);
   return;
  }

  tlv = (struct phyerr_tlv *)&phyerr->buf[i];
  tlv_len = __le16_to_cpu(tlv->len);
  tlv_buf = &phyerr->buf[i + sizeof(*tlv)];

  if (i + sizeof(*tlv) + tlv_len > buf_len) {
   ath10k_warn(ar, "failed to parse phyerr tlv payload at byte %d\n",
        i);
   return;
  }

  switch (tlv->tag) {
  case 128:
   if (sizeof(*fftr) > tlv_len) {
    ath10k_warn(ar, "failed to parse fft report at byte %d\n",
         i);
    return;
   }

   fftr_len = tlv_len - sizeof(*fftr);
   fftr = tlv_buf;
   res = ath10k_spectral_process_fft(ar, phyerr,
         fftr, fftr_len,
         tsf);
   if (res < 0) {
    ath10k_dbg(ar, ATH10K_DBG_WMI, "failed to process fft report: %d\n",
        res);
    return;
   }
   break;
  }

  i += sizeof(*tlv) + tlv_len;
 }
}
