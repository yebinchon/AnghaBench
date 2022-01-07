
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct solo_dev {int nr_chans; } ;


 int EINVAL ;
 scalar_t__ SOLO_MOT_FLAG_AREA ;
 int SOLO_MOT_THRESH_SIZE ;
 int solo_dma_vin_region (struct solo_dev*,scalar_t__,int ,int) ;

int solo_set_motion_threshold(struct solo_dev *solo_dev, u8 ch, u16 val)
{
 if (ch > solo_dev->nr_chans)
  return -EINVAL;

 return solo_dma_vin_region(solo_dev, SOLO_MOT_FLAG_AREA +
       (ch * SOLO_MOT_THRESH_SIZE * 2),
       val, SOLO_MOT_THRESH_SIZE);
}
