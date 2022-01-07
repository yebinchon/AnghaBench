
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ fm_band; scalar_t__ bot_freq; scalar_t__ top_freq; } ;
struct TYPE_4__ {scalar_t__ freq; TYPE_1__ region; } ;
struct fmdev {TYPE_2__ rx; } ;
typedef int payload ;


 int BAND_SET ;
 int EINVAL ;
 scalar_t__ FM_BAND_EUROPE_US ;
 scalar_t__ FM_BAND_JAPAN ;
 int REG_WR ;
 int fm_rx_set_freq (struct fmdev*,scalar_t__) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmc_update_region_info (struct fmdev*,scalar_t__) ;
 int fmdbg (char*,scalar_t__) ;
 int fmerr (char*) ;

int fm_rx_set_region(struct fmdev *fmdev, u8 region_to_set)
{
 u16 payload;
 u32 new_frq = 0;
 int ret;

 if (region_to_set != FM_BAND_EUROPE_US &&
     region_to_set != FM_BAND_JAPAN) {
  fmerr("Invalid band\n");
  return -EINVAL;
 }

 if (fmdev->rx.region.fm_band == region_to_set) {
  fmerr("Requested band is already configured\n");
  return 0;
 }


 payload = (u16)region_to_set;
 ret = fmc_send_cmd(fmdev, BAND_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmc_update_region_info(fmdev, region_to_set);


 if (fmdev->rx.freq < fmdev->rx.region.bot_freq)
  new_frq = fmdev->rx.region.bot_freq;
 else if (fmdev->rx.freq > fmdev->rx.region.top_freq)
  new_frq = fmdev->rx.region.top_freq;

 if (new_frq) {
  fmdbg("Current freq is not within band limit boundary,switching to %d KHz\n",
        new_frq);

  ret = fm_rx_set_freq(fmdev, new_frq);
 }

 return ret;
}
