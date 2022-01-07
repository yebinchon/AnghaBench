
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int nr_chans; } ;


 int SOLO_VI_WIN_CTRL0 (int) ;
 int SOLO_VI_WIN_CTRL1 (int) ;
 int SOLO_VI_WIN_ON (int) ;
 int SOLO_VO_BORDER_FILL_MASK ;
 int SOLO_VO_BORDER_LINE_MASK ;
 int SOLO_VO_BORDER_X (int) ;
 int SOLO_VO_BORDER_Y (int) ;
 int SOLO_VO_DISP_CTRL ;
 int SOLO_VO_FREEZE_CTRL ;
 int SOLO_VO_RECTANGLE_CTRL (int) ;
 int SOLO_VO_RECTANGLE_START (int) ;
 int SOLO_VO_RECTANGLE_STOP (int) ;
 int SOLO_VO_ZOOM_CTRL ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

void solo_disp_exit(struct solo_dev *solo_dev)
{
 int i;

 solo_reg_write(solo_dev, SOLO_VO_DISP_CTRL, 0);
 solo_reg_write(solo_dev, SOLO_VO_ZOOM_CTRL, 0);
 solo_reg_write(solo_dev, SOLO_VO_FREEZE_CTRL, 0);

 for (i = 0; i < solo_dev->nr_chans; i++) {
  solo_reg_write(solo_dev, SOLO_VI_WIN_CTRL0(i), 0);
  solo_reg_write(solo_dev, SOLO_VI_WIN_CTRL1(i), 0);
  solo_reg_write(solo_dev, SOLO_VI_WIN_ON(i), 0);
 }


 for (i = 0; i < 5; i++)
  solo_reg_write(solo_dev, SOLO_VO_BORDER_X(i), 0);

 for (i = 0; i < 5; i++)
  solo_reg_write(solo_dev, SOLO_VO_BORDER_Y(i), 0);

 solo_reg_write(solo_dev, SOLO_VO_BORDER_LINE_MASK, 0);
 solo_reg_write(solo_dev, SOLO_VO_BORDER_FILL_MASK, 0);

 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_CTRL(0), 0);
 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_START(0), 0);
 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_STOP(0), 0);

 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_CTRL(1), 0);
 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_START(1), 0);
 solo_reg_write(solo_dev, SOLO_VO_RECTANGLE_STOP(1), 0);
}
