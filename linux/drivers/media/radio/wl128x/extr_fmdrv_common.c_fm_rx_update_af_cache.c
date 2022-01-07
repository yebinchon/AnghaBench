
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct tuned_station_info {scalar_t__ af_list_max; scalar_t__ afcache_size; scalar_t__* af_cache; } ;
struct TYPE_3__ {scalar_t__ fm_band; scalar_t__ bot_freq; } ;
struct TYPE_4__ {scalar_t__ freq; TYPE_1__ region; struct tuned_station_info stat_info; } ;
struct fmdev {TYPE_2__ rx; } ;


 scalar_t__ FM_BAND_EUROPE_US ;
 scalar_t__ FM_BAND_JAPAN ;
 scalar_t__ FM_RDS_1_AF_FOLLOWS ;
 scalar_t__ FM_RDS_25_AF_FOLLOWS ;
 scalar_t__ FM_RDS_MAX_AF ;
 scalar_t__ FM_RDS_MAX_AF_JAPAN ;
 scalar_t__ FM_RDS_MIN_AF ;
 int fmdbg (char*,...) ;

__attribute__((used)) static void fm_rx_update_af_cache(struct fmdev *fmdev, u8 af)
{
 struct tuned_station_info *stat_info = &fmdev->rx.stat_info;
 u8 reg_idx = fmdev->rx.region.fm_band;
 u8 index;
 u32 freq;


 if ((af >= FM_RDS_1_AF_FOLLOWS) && (af <= FM_RDS_25_AF_FOLLOWS)) {
  fmdev->rx.stat_info.af_list_max = (af - FM_RDS_1_AF_FOLLOWS + 1);
  fmdev->rx.stat_info.afcache_size = 0;
  fmdbg("No of expected AF : %d\n", fmdev->rx.stat_info.af_list_max);
  return;
 }

 if (af < FM_RDS_MIN_AF)
  return;
 if (reg_idx == FM_BAND_EUROPE_US && af > FM_RDS_MAX_AF)
  return;
 if (reg_idx == FM_BAND_JAPAN && af > FM_RDS_MAX_AF_JAPAN)
  return;

 freq = fmdev->rx.region.bot_freq + (af * 100);
 if (freq == fmdev->rx.freq) {
  fmdbg("Current freq(%d) is matching with received AF(%d)\n",
    fmdev->rx.freq, freq);
  return;
 }

 for (index = 0; index < stat_info->afcache_size; index++) {
  if (stat_info->af_cache[index] == freq)
   break;
 }

 if (index == stat_info->af_list_max) {
  fmdbg("AF cache is full\n");
  return;
 }




 if (index == stat_info->afcache_size) {
  fmdbg("Storing AF %d to cache index %d\n", freq, index);
  stat_info->af_cache[index] = freq;
  stat_info->afcache_size++;
 }
}
