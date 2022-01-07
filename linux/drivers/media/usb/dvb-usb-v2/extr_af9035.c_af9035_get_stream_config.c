
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int dev; } ;
struct TYPE_6__ {int buffersize; } ;
struct TYPE_7__ {TYPE_2__ bulk; } ;
struct usb_data_stream_properties {TYPE_3__ u; } ;
struct dvb_usb_device {TYPE_1__* udev; struct usb_interface* intf; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_5__ {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_FULL ;
 int dev_dbg (int *,char*,int ) ;
 TYPE_4__* fe_to_adap (struct dvb_frontend*) ;
 struct dvb_usb_device* fe_to_d (struct dvb_frontend*) ;

__attribute__((used)) static int af9035_get_stream_config(struct dvb_frontend *fe, u8 *ts_type,
  struct usb_data_stream_properties *stream)
{
 struct dvb_usb_device *d = fe_to_d(fe);
 struct usb_interface *intf = d->intf;

 dev_dbg(&intf->dev, "adap=%d\n", fe_to_adap(fe)->id);

 if (d->udev->speed == USB_SPEED_FULL)
  stream->u.bulk.buffersize = 5 * 188;

 return 0;
}
