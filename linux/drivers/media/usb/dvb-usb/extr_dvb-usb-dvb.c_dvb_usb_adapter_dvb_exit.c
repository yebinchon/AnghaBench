
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct dvb_usb_adapter {int state; int dvb_adap; TYPE_2__ demux; int dmxdev; int dvb_net; } ;


 int DVB_USB_ADAP_STATE_DVB ;
 int deb_info (char*) ;
 int dvb_dmx_release (TYPE_2__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_usb_media_device_unregister (struct dvb_usb_adapter*) ;
 int stub1 (TYPE_1__*) ;

int dvb_usb_adapter_dvb_exit(struct dvb_usb_adapter *adap)
{
 if (adap->state & DVB_USB_ADAP_STATE_DVB) {
  deb_info("unregistering DVB part\n");
  dvb_net_release(&adap->dvb_net);
  adap->demux.dmx.close(&adap->demux.dmx);
  dvb_dmxdev_release(&adap->dmxdev);
  dvb_dmx_release(&adap->demux);
  dvb_usb_media_device_unregister(adap);
  dvb_unregister_adapter(&adap->dvb_adap);
  adap->state &= ~DVB_USB_ADAP_STATE_DVB;
 }
 return 0;
}
