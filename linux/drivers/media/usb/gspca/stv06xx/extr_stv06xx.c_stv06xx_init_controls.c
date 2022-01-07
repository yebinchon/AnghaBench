
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {TYPE_2__* sensor; } ;
struct TYPE_3__ {int * ctrl_handler; } ;
struct gspca_dev {int ctrl_handler; TYPE_1__ vdev; } ;
struct TYPE_4__ {int (* init_controls ) (struct sd*) ;} ;


 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int stub1 (struct sd*) ;

__attribute__((used)) static int stv06xx_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dbg(gspca_dev, D_PROBE, "Initializing controls\n");

 gspca_dev->vdev.ctrl_handler = &gspca_dev->ctrl_handler;
 return sd->sensor->init_controls(sd);
}
