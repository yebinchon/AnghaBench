
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wmi_phyerr_ev_arg {int dummy; } ;
struct phyerr_fft_report {int dummy; } ;
struct ath10k {int dummy; } ;



__attribute__((used)) static inline int
ath10k_spectral_process_fft(struct ath10k *ar,
       struct wmi_phyerr_ev_arg *phyerr,
       const struct phyerr_fft_report *fftr,
       size_t bin_len, u64 tsf)
{
 return 0;
}
