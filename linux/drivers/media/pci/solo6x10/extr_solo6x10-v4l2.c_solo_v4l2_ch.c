
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct solo_dev {scalar_t__ nr_chans; scalar_t__ nr_ext; int video_hsize; } ;


 int EINVAL ;
 int solo_v4l2_ch_ext_16up (struct solo_dev*,int) ;
 int solo_v4l2_ch_ext_4up (struct solo_dev*,scalar_t__,int) ;
 int solo_vlines (struct solo_dev*) ;
 int solo_win_setup (struct solo_dev*,scalar_t__,int ,int ,int ,int ,int) ;

__attribute__((used)) static int solo_v4l2_ch(struct solo_dev *solo_dev, u8 ch, int on)
{
 u8 ext_ch;

 if (ch < solo_dev->nr_chans) {
  solo_win_setup(solo_dev, ch, on ? 0 : solo_dev->video_hsize,
          on ? 0 : solo_vlines(solo_dev),
          solo_dev->video_hsize, solo_vlines(solo_dev),
          on ? 1 : 0);
  return 0;
 }

 if (ch >= solo_dev->nr_chans + solo_dev->nr_ext)
  return -EINVAL;

 ext_ch = ch - solo_dev->nr_chans;


 if (ext_ch < 4)
  return solo_v4l2_ch_ext_4up(solo_dev, ext_ch, on);


 return solo_v4l2_ch_ext_16up(solo_dev, on);
}
