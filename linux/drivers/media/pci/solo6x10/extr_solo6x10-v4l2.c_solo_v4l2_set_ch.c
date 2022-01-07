
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct solo_dev {scalar_t__ nr_chans; scalar_t__ nr_ext; scalar_t__ cur_disp_ch; } ;


 int EINVAL ;
 int erase_on (struct solo_dev*) ;
 int solo_v4l2_ch (struct solo_dev*,scalar_t__,int) ;

__attribute__((used)) static int solo_v4l2_set_ch(struct solo_dev *solo_dev, u8 ch)
{
 if (ch >= solo_dev->nr_chans + solo_dev->nr_ext)
  return -EINVAL;

 erase_on(solo_dev);

 solo_v4l2_ch(solo_dev, solo_dev->cur_disp_ch, 0);
 solo_v4l2_ch(solo_dev, ch, 1);

 solo_dev->cur_disp_ch = ch;

 return 0;
}
