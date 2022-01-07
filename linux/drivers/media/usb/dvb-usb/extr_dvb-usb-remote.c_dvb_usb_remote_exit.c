
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ rc; } ;
struct dvb_usb_device {int state; int rc_dev; int input_dev; TYPE_2__ props; int rc_query_work; } ;


 scalar_t__ DVB_RC_LEGACY ;
 int DVB_USB_STATE_REMOTE ;
 int cancel_delayed_work_sync (int *) ;
 int input_unregister_device (int ) ;
 int rc_unregister_device (int ) ;

int dvb_usb_remote_exit(struct dvb_usb_device *d)
{
 if (d->state & DVB_USB_STATE_REMOTE) {
  cancel_delayed_work_sync(&d->rc_query_work);
  if (d->props.rc.mode == DVB_RC_LEGACY)
   input_unregister_device(d->input_dev);
  else
   rc_unregister_device(d->rc_dev);
 }
 d->state &= ~DVB_USB_STATE_REMOTE;
 return 0;
}
