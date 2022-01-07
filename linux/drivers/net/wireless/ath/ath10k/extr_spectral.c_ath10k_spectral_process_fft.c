
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_phyerr_ev_arg {int chan_width_mhz; int freq1; int freq2; int* nf_chains; int rssi_combined; } ;
struct phyerr_fft_report {int reg1; int reg0; } ;
struct fft_sample_tlv {int dummy; } ;
struct TYPE_4__ {void* length; int type; } ;
struct fft_sample_ath10k {int chan_width_mhz; int* data; TYPE_2__ tlv; void* max_index; int max_exp; int tsf; void* noise; void* freq2; void* freq1; void* base_pwr_db; void* total_gain_db; int rssi; void* max_magnitude; void* avgpwr_db; void* relpwr_db; } ;
struct TYPE_3__ {scalar_t__ spectral_bin_offset; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int ATH_FFT_SAMPLE_ATH10K ;
 int EINVAL ;
 void* MS (int ,int ) ;
 int SEARCH_FFT_REPORT_REG0_BASE_PWR_DB ;
 int SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX ;
 int SEARCH_FFT_REPORT_REG0_PEAK_SIDX ;
 int SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB ;
 int SEARCH_FFT_REPORT_REG1_AVGPWR_DB ;
 int SEARCH_FFT_REPORT_REG1_PEAK_MAG ;
 int SEARCH_FFT_REPORT_REG1_RELPWR_DB ;
 int SPECTRAL_ATH10K_MAX_NUM_BINS ;
 void* __cpu_to_be16 (int) ;
 int __cpu_to_be64 (int ) ;
 int __le32_to_cpu (int ) ;
 size_t ath10k_spectral_fix_bin_size (struct ath10k*,size_t) ;
 int get_max_exp (void*,int,size_t,size_t*) ;
 int memcpy (int*,size_t*,size_t) ;
 int send_fft_sample (struct ath10k*,TYPE_2__*) ;

int ath10k_spectral_process_fft(struct ath10k *ar,
    struct wmi_phyerr_ev_arg *phyerr,
    const struct phyerr_fft_report *fftr,
    size_t bin_len, u64 tsf)
{
 struct fft_sample_ath10k *fft_sample;
 u8 buf[sizeof(*fft_sample) + SPECTRAL_ATH10K_MAX_NUM_BINS];
 u16 freq1, freq2, total_gain_db, base_pwr_db, length, peak_mag;
 u32 reg0, reg1;
 u8 chain_idx, *bins;
 int dc_pos;

 fft_sample = (struct fft_sample_ath10k *)&buf;

 bin_len = ath10k_spectral_fix_bin_size(ar, bin_len);

 if (bin_len < 64 || bin_len > SPECTRAL_ATH10K_MAX_NUM_BINS)
  return -EINVAL;

 reg0 = __le32_to_cpu(fftr->reg0);
 reg1 = __le32_to_cpu(fftr->reg1);

 length = sizeof(*fft_sample) - sizeof(struct fft_sample_tlv) + bin_len;
 fft_sample->tlv.type = ATH_FFT_SAMPLE_ATH10K;
 fft_sample->tlv.length = __cpu_to_be16(length);




 switch (phyerr->chan_width_mhz) {
 case 20:
  fft_sample->chan_width_mhz = 22;
  break;
 case 40:
  fft_sample->chan_width_mhz = 44;
  break;
 case 80:






  if (bin_len == 64)
   return -EINVAL;
  fft_sample->chan_width_mhz = 88;
  break;
 default:
  fft_sample->chan_width_mhz = phyerr->chan_width_mhz;
 }

 fft_sample->relpwr_db = MS(reg1, SEARCH_FFT_REPORT_REG1_RELPWR_DB);
 fft_sample->avgpwr_db = MS(reg1, SEARCH_FFT_REPORT_REG1_AVGPWR_DB);

 peak_mag = MS(reg1, SEARCH_FFT_REPORT_REG1_PEAK_MAG);
 fft_sample->max_magnitude = __cpu_to_be16(peak_mag);
 fft_sample->max_index = MS(reg0, SEARCH_FFT_REPORT_REG0_PEAK_SIDX);
 fft_sample->rssi = phyerr->rssi_combined;

 total_gain_db = MS(reg0, SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB);
 base_pwr_db = MS(reg0, SEARCH_FFT_REPORT_REG0_BASE_PWR_DB);
 fft_sample->total_gain_db = __cpu_to_be16(total_gain_db);
 fft_sample->base_pwr_db = __cpu_to_be16(base_pwr_db);

 freq1 = phyerr->freq1;
 freq2 = phyerr->freq2;
 fft_sample->freq1 = __cpu_to_be16(freq1);
 fft_sample->freq2 = __cpu_to_be16(freq2);

 chain_idx = MS(reg0, SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX);

 fft_sample->noise = __cpu_to_be16(phyerr->nf_chains[chain_idx]);

 bins = (u8 *)fftr;
 bins += sizeof(*fftr) + ar->hw_params.spectral_bin_offset;

 fft_sample->tsf = __cpu_to_be64(tsf);




 fft_sample->max_exp = get_max_exp(fft_sample->max_index, peak_mag,
       bin_len, bins);

 memcpy(fft_sample->data, bins, bin_len);




 dc_pos = bin_len / 2;
 fft_sample->data[dc_pos] = (fft_sample->data[dc_pos + 1] +
        fft_sample->data[dc_pos - 1]) / 2;

 send_fft_sample(ar, &fft_sample->tlv);

 return 0;
}
