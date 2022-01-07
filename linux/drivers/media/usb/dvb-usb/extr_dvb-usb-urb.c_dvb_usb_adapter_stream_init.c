
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num_frontends; TYPE_3__* fe; } ;
struct dvb_usb_adapter {TYPE_4__ props; TYPE_2__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_10__ {struct dvb_usb_adapter* user_priv; int complete; int udev; } ;
struct TYPE_8__ {int caps; int stream; } ;
struct TYPE_7__ {TYPE_5__ stream; } ;
struct TYPE_6__ {int udev; } ;


 int DVB_USB_ADAP_RECEIVES_204_BYTE_TS ;
 int DVB_USB_ADAP_RECEIVES_RAW_PAYLOAD ;
 int dvb_usb_data_complete ;
 int dvb_usb_data_complete_204 ;
 int dvb_usb_data_complete_raw ;
 int usb_urb_init (TYPE_5__*,int *) ;

int dvb_usb_adapter_stream_init(struct dvb_usb_adapter *adap)
{
 int i, ret = 0;
 for (i = 0; i < adap->props.num_frontends; i++) {

  adap->fe_adap[i].stream.udev = adap->dev->udev;
  if (adap->props.fe[i].caps & DVB_USB_ADAP_RECEIVES_204_BYTE_TS)
   adap->fe_adap[i].stream.complete =
    dvb_usb_data_complete_204;
  else
  if (adap->props.fe[i].caps & DVB_USB_ADAP_RECEIVES_RAW_PAYLOAD)
   adap->fe_adap[i].stream.complete =
    dvb_usb_data_complete_raw;
  else
  adap->fe_adap[i].stream.complete = dvb_usb_data_complete;
  adap->fe_adap[i].stream.user_priv = adap;
  ret = usb_urb_init(&adap->fe_adap[i].stream,
       &adap->props.fe[i].stream);
  if (ret < 0)
   break;
 }
 return ret;
}
