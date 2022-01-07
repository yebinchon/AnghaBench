
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_dfs_fft_40 {int upper_bins; int lower_bins; } ;


 scalar_t__ fft_bitmap_weight (int ) ;
 int fft_max_index (int ) ;
 int fft_max_magnitude (int ) ;

__attribute__((used)) static int ath9k_get_max_index_ht40(struct ath9k_dfs_fft_40 *fft,
        bool is_ctl, bool is_ext)
{
 const int DFS_UPPER_BIN_OFFSET = 64;

 if (is_ctl && is_ext) {

  is_ctl = fft_bitmap_weight(fft->lower_bins) != 0;
  is_ext = fft_bitmap_weight(fft->upper_bins) != 0;


  if (is_ctl && is_ext) {
   int mag_lower = fft_max_magnitude(fft->lower_bins);
   int mag_upper = fft_max_magnitude(fft->upper_bins);
   if (mag_upper > mag_lower)
    is_ctl = 0;
   else
    is_ext = 0;
  }
 }
 if (is_ctl)
  return fft_max_index(fft->lower_bins);
 return fft_max_index(fft->upper_bins) + DFS_UPPER_BIN_OFFSET;
}
