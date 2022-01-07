
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct em28xx_dvb {int i2c_client_demod; int i2c_client_tuner; int i2c_client_sec; TYPE_3__** fe; } ;
struct TYPE_4__ {int has_dvb; } ;
struct em28xx {int ref; struct em28xx_dvb* dvb; scalar_t__ disconnected; TYPE_2__* intf; TYPE_1__ board; scalar_t__ is_audio_only; } ;
struct TYPE_6__ {void* exit; int ops; } ;
struct TYPE_5__ {int dev; } ;


 void* DVB_FE_DEVICE_REMOVED ;
 int EM28XX_DIGITAL_MODE ;
 int dev_info (int *,char*) ;
 int dvb_module_release (int ) ;
 int em28xx_free_device ;
 int em28xx_uninit_usb_xfer (struct em28xx*,int ) ;
 int em28xx_unregister_dvb (struct em28xx_dvb*) ;
 int kfree (struct em28xx_dvb*) ;
 int kref_put (int *,int ) ;
 int prevent_sleep (int *) ;

__attribute__((used)) static int em28xx_dvb_fini(struct em28xx *dev)
{
 struct em28xx_dvb *dvb;

 if (dev->is_audio_only) {

  return 0;
 }

 if (!dev->board.has_dvb) {

  return 0;
 }

 if (!dev->dvb)
  return 0;

 dev_info(&dev->intf->dev, "Closing DVB extension\n");

 dvb = dev->dvb;

 em28xx_uninit_usb_xfer(dev, EM28XX_DIGITAL_MODE);

 if (dev->disconnected) {




  if (dvb->fe[0]) {
   prevent_sleep(&dvb->fe[0]->ops);
   dvb->fe[0]->exit = DVB_FE_DEVICE_REMOVED;
  }
  if (dvb->fe[1]) {
   prevent_sleep(&dvb->fe[1]->ops);
   dvb->fe[1]->exit = DVB_FE_DEVICE_REMOVED;
  }
 }

 em28xx_unregister_dvb(dvb);


 dvb_module_release(dvb->i2c_client_sec);
 dvb_module_release(dvb->i2c_client_tuner);
 dvb_module_release(dvb->i2c_client_demod);

 kfree(dvb);
 dev->dvb = ((void*)0);
 kref_put(&dev->ref, em28xx_free_device);

 return 0;
}
