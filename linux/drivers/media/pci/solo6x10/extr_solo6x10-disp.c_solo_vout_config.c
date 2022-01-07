
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int vout_hstart; int vout_vstart; int video_type; int nr_chans; scalar_t__ video_vsize; scalar_t__ video_hsize; } ;


 int SOLO_DISP_EXT_ADDR ;
 int SOLO_VI_CH_ENA ;
 int SOLO_VI_WIN_SW ;
 int SOLO_VO_ACT_H ;
 int SOLO_VO_ACT_V ;
 int SOLO_VO_BKG_COLOR ;
 int SOLO_VO_BORDER_FILL_COLOR ;
 int SOLO_VO_BORDER_LINE_COLOR ;
 int SOLO_VO_DISP_BASE (int ) ;
 int SOLO_VO_DISP_CTRL ;
 int SOLO_VO_DISP_ERASE ;
 int SOLO_VO_DISP_ERASE_COUNT (int) ;
 int SOLO_VO_DISP_ERASE_ON ;
 int SOLO_VO_DISP_ON ;
 int SOLO_VO_FMT_ENC ;
 int SOLO_VO_FREEZE_CTRL ;
 int SOLO_VO_H_LEN (scalar_t__) ;
 int SOLO_VO_H_START (int) ;
 int SOLO_VO_H_STOP (scalar_t__) ;
 int SOLO_VO_NA_COLOR_CB (int ) ;
 int SOLO_VO_NA_COLOR_CR (int ) ;
 int SOLO_VO_NA_COLOR_Y (int ) ;
 int SOLO_VO_RANGE_HV ;
 int SOLO_VO_USER_COLOR_SET_NAH ;
 int SOLO_VO_USER_COLOR_SET_NAV ;
 int SOLO_VO_V_LEN (scalar_t__) ;
 int SOLO_VO_V_START (int) ;
 int SOLO_VO_V_STOP (scalar_t__) ;
 int SOLO_VO_ZOOM_CTRL ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int solo_vout_config_cursor (struct solo_dev*) ;

__attribute__((used)) static void solo_vout_config(struct solo_dev *solo_dev)
{
 solo_dev->vout_hstart = 6;
 solo_dev->vout_vstart = 8;

 solo_reg_write(solo_dev, SOLO_VO_FMT_ENC,
         solo_dev->video_type |
         SOLO_VO_USER_COLOR_SET_NAV |
         SOLO_VO_USER_COLOR_SET_NAH |
         SOLO_VO_NA_COLOR_Y(0) |
         SOLO_VO_NA_COLOR_CB(0) |
         SOLO_VO_NA_COLOR_CR(0));

 solo_reg_write(solo_dev, SOLO_VO_ACT_H,
         SOLO_VO_H_START(solo_dev->vout_hstart) |
         SOLO_VO_H_STOP(solo_dev->vout_hstart +
          solo_dev->video_hsize));

 solo_reg_write(solo_dev, SOLO_VO_ACT_V,
         SOLO_VO_V_START(solo_dev->vout_vstart) |
         SOLO_VO_V_STOP(solo_dev->vout_vstart +
          solo_dev->video_vsize));

 solo_reg_write(solo_dev, SOLO_VO_RANGE_HV,
         SOLO_VO_H_LEN(solo_dev->video_hsize) |
         SOLO_VO_V_LEN(solo_dev->video_vsize));


 solo_reg_write(solo_dev, SOLO_VO_BORDER_LINE_COLOR,
         (0xa0 << 24) | (0x88 << 16) | (0xa0 << 8) | 0x88);
 solo_reg_write(solo_dev, SOLO_VO_BORDER_FILL_COLOR,
         (0x10 << 24) | (0x8f << 16) | (0x10 << 8) | 0x8f);
 solo_reg_write(solo_dev, SOLO_VO_BKG_COLOR,
         (16 << 24) | (128 << 16) | (16 << 8) | 128);

 solo_reg_write(solo_dev, SOLO_VO_DISP_ERASE, SOLO_VO_DISP_ERASE_ON);

 solo_reg_write(solo_dev, SOLO_VI_WIN_SW, 0);

 solo_reg_write(solo_dev, SOLO_VO_ZOOM_CTRL, 0);
 solo_reg_write(solo_dev, SOLO_VO_FREEZE_CTRL, 0);

 solo_reg_write(solo_dev, SOLO_VO_DISP_CTRL, SOLO_VO_DISP_ON |
         SOLO_VO_DISP_ERASE_COUNT(8) |
         SOLO_VO_DISP_BASE(SOLO_DISP_EXT_ADDR));


 solo_vout_config_cursor(solo_dev);


 solo_reg_write(solo_dev, SOLO_VI_CH_ENA,
         (1 << solo_dev->nr_chans) - 1);
}
