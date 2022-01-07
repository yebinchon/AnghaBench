
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct fft_sample_tlv {int dummy; } ;
struct TYPE_4__ {void* length; int type; } ;
struct fft_sample_ht20_40 {int channel_type; int lower_max_index; int upper_max_index; int lower_bitmap_weight; int upper_bitmap_weight; int max_exp; int* data; void* upper_max_magnitude; void* lower_max_magnitude; int tsf; void* upper_rssi; void* lower_rssi; void* upper_noise; void* lower_noise; void* freq; TYPE_2__ tlv; } ;
struct ath_spec_scan_priv {struct ath_hw* ah; } ;
struct ath_rx_status {int * rs_rssi_ctl; int * rs_rssi_ext; } ;
struct ath_hw {void* noise; int curchan; struct ath9k_hw_cal_data* caldata; } ;
struct ath_ht20_40_mag_info {int max_exp; int upper_bins; int lower_bins; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {TYPE_1__* nfCalHist; } ;
typedef void* s8 ;
typedef void* s16 ;
typedef int fft_sample_40 ;
struct TYPE_3__ {int privNF; } ;


 void* ATH_DEFAULT_NOISE_FLOOR ;
 int ATH_FFT_SAMPLE_HT20_40 ;
 int NL80211_CHAN_HT40PLUS ;
 int SPECTRAL_HT20_40_NUM_BINS ;
 int SPECTRAL_SCAN ;
 void* __cpu_to_be16 (int) ;
 int __cpu_to_be64 (int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 void* ath9k_hw_getchan_noise (struct ath_hw*,int ,int ) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_debug_send_fft_sample (struct ath_spec_scan_priv*,struct fft_sample_tlv*) ;
 void* fix_rssi_inv_only (int ) ;
 int memcpy (int*,int*,int) ;
 int spectral_bitmap_weight (int ) ;
 int spectral_max_index_ht40 (int ) ;
 int spectral_max_magnitude (int ) ;

__attribute__((used)) static int
ath_cmn_process_ht20_40_fft(struct ath_rx_status *rs,
   struct ath_spec_scan_priv *spec_priv,
   u8 *sample_buf,
   u64 tsf, u16 freq, int chan_type)
{
 struct fft_sample_ht20_40 fft_sample_40;
 struct ath_common *common = ath9k_hw_common(spec_priv->ah);
 struct ath_hw *ah = spec_priv->ah;
 struct ath9k_hw_cal_data *caldata = ah->caldata;
 struct ath_ht20_40_mag_info *mag_info;
 struct fft_sample_tlv *tlv;
 int dc_pos = SPECTRAL_HT20_40_NUM_BINS / 2;
 int i = 0;
 int ret = 0;
 s16 ext_nf;
 u16 lower_mag, upper_mag, tmp_mag, length;
 s8 lower_rssi, upper_rssi;
 u8 lower_max_index, upper_max_index;
 u8 lower_bitmap_w, upper_bitmap_w, max_exp;

 if (caldata)
  ext_nf = ath9k_hw_getchan_noise(ah, ah->curchan,
    caldata->nfCalHist[3].privNF);
 else
  ext_nf = ATH_DEFAULT_NOISE_FLOOR;

 length = sizeof(fft_sample_40) - sizeof(struct fft_sample_tlv);
 fft_sample_40.tlv.type = ATH_FFT_SAMPLE_HT20_40;
 fft_sample_40.tlv.length = __cpu_to_be16(length);
 fft_sample_40.freq = __cpu_to_be16(freq);
 fft_sample_40.channel_type = chan_type;

 if (chan_type == NL80211_CHAN_HT40PLUS) {
  lower_rssi = fix_rssi_inv_only(rs->rs_rssi_ctl[0]);
  upper_rssi = fix_rssi_inv_only(rs->rs_rssi_ext[0]);

  fft_sample_40.lower_noise = ah->noise;
  fft_sample_40.upper_noise = ext_nf;
 } else {
  lower_rssi = fix_rssi_inv_only(rs->rs_rssi_ext[0]);
  upper_rssi = fix_rssi_inv_only(rs->rs_rssi_ctl[0]);

  fft_sample_40.lower_noise = ext_nf;
  fft_sample_40.upper_noise = ah->noise;
 }

 fft_sample_40.lower_rssi = lower_rssi;
 fft_sample_40.upper_rssi = upper_rssi;

 mag_info = (struct ath_ht20_40_mag_info *) (sample_buf +
     SPECTRAL_HT20_40_NUM_BINS);

 lower_mag = spectral_max_magnitude(mag_info->lower_bins);
 fft_sample_40.lower_max_magnitude = __cpu_to_be16(lower_mag);

 upper_mag = spectral_max_magnitude(mag_info->upper_bins);
 fft_sample_40.upper_max_magnitude = __cpu_to_be16(upper_mag);

 lower_max_index = spectral_max_index_ht40(mag_info->lower_bins);
 fft_sample_40.lower_max_index = lower_max_index;

 upper_max_index = spectral_max_index_ht40(mag_info->upper_bins);
 fft_sample_40.upper_max_index = upper_max_index;

 lower_bitmap_w = spectral_bitmap_weight(mag_info->lower_bins);
 fft_sample_40.lower_bitmap_weight = lower_bitmap_w;

 upper_bitmap_w = spectral_bitmap_weight(mag_info->upper_bins);
 fft_sample_40.upper_bitmap_weight = upper_bitmap_w;

 max_exp = mag_info->max_exp & 0xf;
 fft_sample_40.max_exp = max_exp;

 fft_sample_40.tsf = __cpu_to_be64(tsf);

 memcpy(fft_sample_40.data, sample_buf, SPECTRAL_HT20_40_NUM_BINS);

 ath_dbg(common, SPECTRAL_SCAN, "FFT HT20/40 frame: lower mag 0x%X,"
     "lower_mag_idx %i, upper mag 0x%X,"
     "upper_mag_idx %i\n",
     lower_mag >> max_exp,
     lower_max_index,
     upper_mag >> max_exp,
     upper_max_index);




 if (((fft_sample_40.data[upper_max_index + dc_pos] & 0xf8)
     != ((upper_mag >> max_exp) & 0xf8)) ||
    ((fft_sample_40.data[lower_max_index] & 0xf8)
     != ((lower_mag >> max_exp) & 0xf8))) {
  ath_dbg(common, SPECTRAL_SCAN, "Magnitude mismatch !\n");
  ret = -1;
 }




 fft_sample_40.data[dc_pos] = (fft_sample_40.data[dc_pos + 1] +
     fft_sample_40.data[dc_pos - 1]) / 2;





 if (lower_max_index == dc_pos) {
  tmp_mag = 0;
  for (i = 0; i < dc_pos; i++) {
   if (fft_sample_40.data[i] > tmp_mag) {
    tmp_mag = fft_sample_40.data[i];
    fft_sample_40.lower_max_index = i;
   }
  }

  lower_mag = tmp_mag << max_exp;
  fft_sample_40.lower_max_magnitude = __cpu_to_be16(lower_mag);

  ath_dbg(common, SPECTRAL_SCAN,
   "Calculated new lower max 0x%X at %i\n",
   tmp_mag, fft_sample_40.lower_max_index);
 } else
 for (i = 0; i < dc_pos; i++) {
  if (fft_sample_40.data[i] == (lower_mag >> max_exp))
   ath_dbg(common, SPECTRAL_SCAN,
    "Got lower mag: 0x%X at index %i\n",
    fft_sample_40.data[i], i);

  if (fft_sample_40.data[i] > (lower_mag >> max_exp)) {
   ath_dbg(common, SPECTRAL_SCAN,
    "Got lower bin %i higher than max: 0x%X\n",
    i, fft_sample_40.data[i]);
   ret = -1;
  }
 }

 if (upper_max_index == dc_pos) {
  tmp_mag = 0;
  for (i = dc_pos; i < SPECTRAL_HT20_40_NUM_BINS; i++) {
   if (fft_sample_40.data[i] > tmp_mag) {
    tmp_mag = fft_sample_40.data[i];
    fft_sample_40.upper_max_index = i;
   }
  }
  upper_mag = tmp_mag << max_exp;
  fft_sample_40.upper_max_magnitude = __cpu_to_be16(upper_mag);

  ath_dbg(common, SPECTRAL_SCAN,
   "Calculated new upper max 0x%X at %i\n",
   tmp_mag, fft_sample_40.upper_max_index);
 } else
 for (i = dc_pos; i < SPECTRAL_HT20_40_NUM_BINS; i++) {
  if (fft_sample_40.data[i] == (upper_mag >> max_exp))
   ath_dbg(common, SPECTRAL_SCAN,
    "Got upper mag: 0x%X at index %i\n",
    fft_sample_40.data[i], i);

  if (fft_sample_40.data[i] > (upper_mag >> max_exp)) {
   ath_dbg(common, SPECTRAL_SCAN,
    "Got upper bin %i higher than max: 0x%X\n",
    i, fft_sample_40.data[i]);

   ret = -1;
  }
 }

 if (ret < 0)
  return ret;

 tlv = (struct fft_sample_tlv *)&fft_sample_40;

 ath_debug_send_fft_sample(spec_priv, tlv);

 return 0;
}
