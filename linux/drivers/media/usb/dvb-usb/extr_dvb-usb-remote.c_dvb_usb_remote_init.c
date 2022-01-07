
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rc_interval; scalar_t__ rc_query; scalar_t__ rc_map_table; } ;
struct TYPE_5__ {scalar_t__ rc_codes; } ;
struct TYPE_7__ {scalar_t__ mode; TYPE_2__ legacy; TYPE_1__ core; } ;
struct TYPE_8__ {TYPE_3__ rc; } ;
struct dvb_usb_device {int state; TYPE_4__ props; int rc_phys; int udev; } ;


 scalar_t__ DVB_RC_CORE ;
 scalar_t__ DVB_RC_LEGACY ;
 int DVB_USB_STATE_REMOTE ;
 scalar_t__ dvb_usb_disable_rc_polling ;
 int legacy_dvb_usb_remote_init (struct dvb_usb_device*) ;
 int rc_core_dvb_usb_remote_init (struct dvb_usb_device*) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

int dvb_usb_remote_init(struct dvb_usb_device *d)
{
 int err;

 if (dvb_usb_disable_rc_polling)
  return 0;

 if (d->props.rc.legacy.rc_map_table && d->props.rc.legacy.rc_query)
  d->props.rc.mode = DVB_RC_LEGACY;
 else if (d->props.rc.core.rc_codes)
  d->props.rc.mode = DVB_RC_CORE;
 else
  return 0;

 usb_make_path(d->udev, d->rc_phys, sizeof(d->rc_phys));
 strlcat(d->rc_phys, "/ir0", sizeof(d->rc_phys));


 if (d->props.rc.legacy.rc_interval < 40)
  d->props.rc.legacy.rc_interval = 100;

 if (d->props.rc.mode == DVB_RC_LEGACY)
  err = legacy_dvb_usb_remote_init(d);
 else
  err = rc_core_dvb_usb_remote_init(d);
 if (err)
  return err;

 d->state |= DVB_USB_STATE_REMOTE;

 return 0;
}
