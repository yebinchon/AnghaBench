
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_tuner_ops {int (* init ) (TYPE_3__*) ;} ;
struct cx231xx {int xc_fw_load_done; int dev; TYPE_2__* dvb; } ;
struct TYPE_4__ {struct dvb_tuner_ops tuner_ops; } ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_5__ {TYPE_3__** frontend; } ;


 int dev_dbg (int ,char*) ;
 int stub1 (TYPE_3__*) ;

int cx231xx_reset_analog_tuner(struct cx231xx *dev)
{
 int status = 0;

 if (dev->dvb && dev->dvb->frontend[0]) {

  struct dvb_tuner_ops *dops = &dev->dvb->frontend[0]->ops.tuner_ops;

  if (dops->init != ((void*)0) && !dev->xc_fw_load_done) {

   dev_dbg(dev->dev,
    "Reloading firmware for XC5000\n");
   status = dops->init(dev->dvb->frontend[0]);
   if (status == 0) {
    dev->xc_fw_load_done = 1;
    dev_dbg(dev->dev,
     "XC5000 firmware download completed\n");
   } else {
    dev->xc_fw_load_done = 0;
    dev_dbg(dev->dev,
     "XC5000 firmware download failed !!!\n");
   }
  }

 }

 return status;
}
