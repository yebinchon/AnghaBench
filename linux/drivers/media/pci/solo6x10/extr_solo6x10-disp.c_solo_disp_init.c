
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int video_hsize; scalar_t__ video_type; int video_vsize; int fps; int nr_chans; } ;


 int SOLO_VI_WIN_ON (int) ;
 scalar_t__ SOLO_VO_FMT_TYPE_NTSC ;
 int solo_motion_config (struct solo_dev*) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int solo_vin_config (struct solo_dev*) ;
 int solo_vout_config (struct solo_dev*) ;

int solo_disp_init(struct solo_dev *solo_dev)
{
 int i;

 solo_dev->video_hsize = 704;
 if (solo_dev->video_type == SOLO_VO_FMT_TYPE_NTSC) {
  solo_dev->video_vsize = 240;
  solo_dev->fps = 30;
 } else {
  solo_dev->video_vsize = 288;
  solo_dev->fps = 25;
 }

 solo_vin_config(solo_dev);
 solo_motion_config(solo_dev);
 solo_vout_config(solo_dev);

 for (i = 0; i < solo_dev->nr_chans; i++)
  solo_reg_write(solo_dev, SOLO_VI_WIN_ON(i), 1);

 return 0;
}
