
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_handler; } ;
struct TYPE_3__ {int nmodes; int * cam_mode; } ;
struct gspca_dev {int curr_mode; TYPE_2__ vdev; TYPE_1__ cam; int pixfmt; } ;


 int v4l2_ctrl_handler_setup (int ) ;

__attribute__((used)) static void gspca_set_default_mode(struct gspca_dev *gspca_dev)
{
 int i;

 i = gspca_dev->cam.nmodes - 1;
 gspca_dev->curr_mode = i;
 gspca_dev->pixfmt = gspca_dev->cam.cam_mode[i];


 v4l2_ctrl_handler_setup(gspca_dev->vdev.ctrl_handler);
}
