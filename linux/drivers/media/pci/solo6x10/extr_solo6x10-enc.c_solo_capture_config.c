
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {scalar_t__ type; unsigned long video_hsize; unsigned long video_vsize; int nr_chans; } ;


 int GFP_KERNEL ;
 int SOLO_CAP_BASE ;
 int SOLO_CAP_BASE_ADDR (int) ;
 int SOLO_CAP_BTW ;
 int SOLO_CAP_EXT_ADDR (struct solo_dev*) ;
 int SOLO_CAP_EXT_SIZE (struct solo_dev*) ;
 int SOLO_CAP_MAX_BANDWIDTH (int) ;
 int SOLO_CAP_MAX_PAGE (int) ;
 int SOLO_CAP_PAGE_SIZE ;
 int SOLO_CAP_PROG_BANDWIDTH (int) ;
 scalar_t__ SOLO_DEV_6010 ;
 scalar_t__ SOLO_DEV_6110 ;
 int SOLO_DIM_H_MB_NUM (unsigned long) ;
 int SOLO_DIM_PROG ;
 int SOLO_DIM_SCALE1 ;
 int SOLO_DIM_SCALE2 ;
 int SOLO_DIM_SCALE3 ;
 int SOLO_DIM_SCALE4 ;
 int SOLO_DIM_SCALE5 ;
 int SOLO_DIM_V_MB_NUM_FIELD (unsigned long) ;
 int SOLO_DIM_V_MB_NUM_FRAME (unsigned long) ;
 int SOLO_EOSD_EXT_ADDR ;
 int SOLO_EOSD_EXT_SIZE (struct solo_dev*) ;
 int SOLO_VE_OSD_BASE ;
 int SOLO_VE_OSD_CH ;
 int SOLO_VE_OSD_CLR ;
 int SOLO_VE_OSD_H_SHADOW ;
 int SOLO_VE_OSD_OPT ;
 int SOLO_VE_OSD_V_DOUBLE ;
 int SOLO_VE_OSD_V_SHADOW ;
 unsigned long VI_PROG_HSIZE ;
 unsigned long VI_PROG_VSIZE ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int solo_p2m_dma (struct solo_dev*,int,void*,int,int,int ,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

__attribute__((used)) static void solo_capture_config(struct solo_dev *solo_dev)
{
 unsigned long height;
 unsigned long width;
 void *buf;
 int i;

 solo_reg_write(solo_dev, SOLO_CAP_BASE,
         SOLO_CAP_MAX_PAGE((SOLO_CAP_EXT_SIZE(solo_dev)
       - SOLO_CAP_PAGE_SIZE) >> 16)
         | SOLO_CAP_BASE_ADDR(SOLO_CAP_EXT_ADDR(solo_dev) >> 16));


 if (solo_dev->type == SOLO_DEV_6110) {


  solo_reg_write(solo_dev, SOLO_CAP_BTW,
          (1 << 17) | SOLO_CAP_PROG_BANDWIDTH(2) |
          SOLO_CAP_MAX_BANDWIDTH(36));
 } else {
  solo_reg_write(solo_dev, SOLO_CAP_BTW,
          (1 << 17) | SOLO_CAP_PROG_BANDWIDTH(2) |
          SOLO_CAP_MAX_BANDWIDTH(32));
 }


 width = solo_dev->video_hsize;
 height = solo_dev->video_vsize;
 solo_reg_write(solo_dev, SOLO_DIM_SCALE1,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 8) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 width = solo_dev->video_hsize / 2;
 height = solo_dev->video_vsize;
 solo_reg_write(solo_dev, SOLO_DIM_SCALE2,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 8) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 width = solo_dev->video_hsize / 2;
 height = solo_dev->video_vsize / 2;
 solo_reg_write(solo_dev, SOLO_DIM_SCALE3,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 8) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 width = solo_dev->video_hsize / 3;
 height = solo_dev->video_vsize / 3;
 solo_reg_write(solo_dev, SOLO_DIM_SCALE4,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 8) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 width = solo_dev->video_hsize / 4;
 height = solo_dev->video_vsize / 2;
 solo_reg_write(solo_dev, SOLO_DIM_SCALE5,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 8) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 width = VI_PROG_HSIZE;
 height = VI_PROG_VSIZE;
 solo_reg_write(solo_dev, SOLO_DIM_PROG,
         SOLO_DIM_H_MB_NUM(width / 16) |
         SOLO_DIM_V_MB_NUM_FRAME(height / 16) |
         SOLO_DIM_V_MB_NUM_FIELD(height / 16));


 solo_reg_write(solo_dev, SOLO_VE_OSD_CH, 0);
 solo_reg_write(solo_dev, SOLO_VE_OSD_BASE, SOLO_EOSD_EXT_ADDR >> 16);
 solo_reg_write(solo_dev, SOLO_VE_OSD_CLR,
         0xF0 << 16 | 0x80 << 8 | 0x80);

 if (solo_dev->type == SOLO_DEV_6010)
  solo_reg_write(solo_dev, SOLO_VE_OSD_OPT,
          SOLO_VE_OSD_H_SHADOW | SOLO_VE_OSD_V_SHADOW);
 else
  solo_reg_write(solo_dev, SOLO_VE_OSD_OPT, SOLO_VE_OSD_V_DOUBLE
          | SOLO_VE_OSD_H_SHADOW | SOLO_VE_OSD_V_SHADOW);


 buf = kzalloc(SOLO_EOSD_EXT_SIZE(solo_dev), GFP_KERNEL);
 if (!buf)
  return;

 for (i = 0; i < solo_dev->nr_chans; i++) {
  solo_p2m_dma(solo_dev, 1, buf,
        SOLO_EOSD_EXT_ADDR +
        (SOLO_EOSD_EXT_SIZE(solo_dev) * i),
        SOLO_EOSD_EXT_SIZE(solo_dev), 0, 0);
 }
 kfree(buf);
}
