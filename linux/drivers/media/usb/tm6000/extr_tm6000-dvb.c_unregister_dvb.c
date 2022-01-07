
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * transfer_buffer; } ;
struct tm6000_dvb {int mutex; int adapter; int demux; int dmxdev; scalar_t__ frontend; struct urb* bulk_urb; } ;
struct tm6000_core {struct tm6000_dvb* dvb; } ;


 int dvb_dmx_release (int *) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (scalar_t__) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int kfree (int *) ;
 int mutex_destroy (int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static void unregister_dvb(struct tm6000_core *dev)
{
 struct tm6000_dvb *dvb = dev->dvb;

 if (dvb->bulk_urb) {
  struct urb *bulk_urb = dvb->bulk_urb;

  kfree(bulk_urb->transfer_buffer);
  bulk_urb->transfer_buffer = ((void*)0);
  usb_unlink_urb(bulk_urb);
  usb_free_urb(bulk_urb);
 }


 if (dvb->frontend) {
  dvb_unregister_frontend(dvb->frontend);
  dvb_frontend_detach(dvb->frontend);
 }

 dvb_dmxdev_release(&dvb->dmxdev);
 dvb_dmx_release(&dvb->demux);
 dvb_unregister_adapter(&dvb->adapter);
 mutex_destroy(&dvb->mutex);

}
