
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int nr_chans; int video_hsize; } ;


 int SOLO_DEF_MOT_THRESH ;
 int SOLO_MOTION_EXT_ADDR (struct solo_dev*) ;
 int SOLO_MOT_FLAG_AREA ;
 int SOLO_MOT_FLAG_SIZE ;
 int SOLO_MOT_THRESH_SIZE ;
 int SOLO_VI_MOTION_BAR ;
 int SOLO_VI_MOTION_BORDER ;
 int SOLO_VI_MOTION_EN (int ) ;
 int SOLO_VI_MOTION_FRAME_COUNT (int) ;
 int SOLO_VI_MOTION_SAMPLE_COUNT (int) ;
 int SOLO_VI_MOTION_SAMPLE_LENGTH (int) ;
 int SOLO_VI_MOT_ADR ;
 int SOLO_VI_MOT_CTRL ;
 int solo_dma_vin_region (struct solo_dev*,int,int,int) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int solo_set_motion_threshold (struct solo_dev*,int,int ) ;

__attribute__((used)) static void solo_motion_config(struct solo_dev *solo_dev)
{
 int i;

 for (i = 0; i < solo_dev->nr_chans; i++) {

  solo_dma_vin_region(solo_dev, i * SOLO_MOT_FLAG_SIZE, 0x0000,
        SOLO_MOT_FLAG_SIZE);


  solo_dma_vin_region(solo_dev, SOLO_MOT_FLAG_AREA +
        (i * SOLO_MOT_THRESH_SIZE * 2) +
        SOLO_MOT_THRESH_SIZE, 0x0000,
        SOLO_MOT_THRESH_SIZE);


  solo_set_motion_threshold(solo_dev, i, SOLO_DEF_MOT_THRESH);
 }


 solo_reg_write(solo_dev, SOLO_VI_MOT_ADR, SOLO_VI_MOTION_EN(0) |
         (SOLO_MOTION_EXT_ADDR(solo_dev) >> 16));
 solo_reg_write(solo_dev, SOLO_VI_MOT_CTRL,
         SOLO_VI_MOTION_FRAME_COUNT(3) |
         SOLO_VI_MOTION_SAMPLE_LENGTH(solo_dev->video_hsize / 16)

         | SOLO_VI_MOTION_SAMPLE_COUNT(10));

 solo_reg_write(solo_dev, SOLO_VI_MOTION_BORDER, 0);
 solo_reg_write(solo_dev, SOLO_VI_MOTION_BAR, 0);
}
