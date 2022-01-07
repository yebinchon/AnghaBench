
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_device {int num_adapters_initialized; int state; TYPE_1__* adapter; } ;
struct TYPE_4__ {int priv; } ;


 int DVB_USB_STATE_DVB ;
 int dvb_usb_adapter_dvb_exit (TYPE_1__*) ;
 int dvb_usb_adapter_frontend_exit (TYPE_1__*) ;
 int dvb_usb_adapter_stream_exit (TYPE_1__*) ;
 int kfree (int ) ;

__attribute__((used)) static int dvb_usb_adapter_exit(struct dvb_usb_device *d)
{
 int n;

 for (n = 0; n < d->num_adapters_initialized; n++) {
  dvb_usb_adapter_frontend_exit(&d->adapter[n]);
  dvb_usb_adapter_dvb_exit(&d->adapter[n]);
  dvb_usb_adapter_stream_exit(&d->adapter[n]);
  kfree(d->adapter[n].priv);
 }
 d->num_adapters_initialized = 0;
 d->state &= ~DVB_USB_STATE_DVB;
 return 0;
}
