
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_data_stream_properties {int endpoint; } ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct dvb_usb_adapter {int pid_filtering; int max_feed_count; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct dvb_usb_adapter* fe_to_adap (struct dvb_frontend*) ;
 int le16_to_cpu (int ) ;
 int pid_filter ;

__attribute__((used)) static int lme2510_get_stream_config(struct dvb_frontend *fe, u8 *ts_type,
  struct usb_data_stream_properties *stream)
{
 struct dvb_usb_adapter *adap = fe_to_adap(fe);
 struct dvb_usb_device *d;

 if (adap == ((void*)0))
  return 0;

 d = adap_to_d(adap);


 if (pid_filter == 2) {
  adap->pid_filtering = 1;
  adap->max_feed_count = 15;
 }

 if (!(le16_to_cpu(d->udev->descriptor.idProduct)
  == 0x1122))
  stream->endpoint = 0x8;

 return 0;
}
