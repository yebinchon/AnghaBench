
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fe; } ;
struct dvb_usb_adapter {size_t active_fe; size_t num_frontends_initialized; int feedcount; TYPE_4__* fe_adap; TYPE_3__ props; } ;
struct dvb_demux_feed {int pid; int index; TYPE_1__* demux; } ;
struct TYPE_8__ {int stream; scalar_t__ pid_filtering; } ;
struct TYPE_6__ {int (* streaming_ctrl ) (struct dvb_usb_adapter*,int) ;int caps; int (* pid_filter_ctrl ) (struct dvb_usb_adapter*,scalar_t__) ;int (* pid_filter ) (struct dvb_usb_adapter*,int ,int ,int) ;} ;
struct TYPE_5__ {struct dvb_usb_adapter* priv; } ;


 int DVB_USB_ADAP_HAS_PID_FILTER ;
 int DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF ;
 int EINVAL ;
 int ENODEV ;
 int deb_ts (char*,...) ;
 int err (char*) ;
 int stub1 (struct dvb_usb_adapter*,int) ;
 int stub2 (struct dvb_usb_adapter*,int ,int ,int) ;
 int stub3 (struct dvb_usb_adapter*,scalar_t__) ;
 int stub4 (struct dvb_usb_adapter*,int) ;
 int usb_urb_kill (int *) ;
 int usb_urb_submit (int *) ;

__attribute__((used)) static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
 struct dvb_usb_adapter *adap = dvbdmxfeed->demux->priv;
 int newfeedcount, ret;

 if (adap == ((void*)0))
  return -ENODEV;

 if ((adap->active_fe < 0) ||
     (adap->active_fe >= adap->num_frontends_initialized)) {
  return -EINVAL;
 }

 newfeedcount = adap->feedcount + (onoff ? 1 : -1);


 if (newfeedcount == 0) {
  deb_ts("stop feeding\n");
  usb_urb_kill(&adap->fe_adap[adap->active_fe].stream);

  if (adap->props.fe[adap->active_fe].streaming_ctrl != ((void*)0)) {
   ret = adap->props.fe[adap->active_fe].streaming_ctrl(adap, 0);
   if (ret < 0) {
    err("error while stopping stream.");
    return ret;
   }
  }
 }

 adap->feedcount = newfeedcount;


 deb_ts("setting pid (%s): %5d %04x at index %d '%s'\n",
  adap->fe_adap[adap->active_fe].pid_filtering ?
  "yes" : "no", dvbdmxfeed->pid, dvbdmxfeed->pid,
  dvbdmxfeed->index, onoff ? "on" : "off");
 if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
  adap->fe_adap[adap->active_fe].pid_filtering &&
  adap->props.fe[adap->active_fe].pid_filter != ((void*)0))
  adap->props.fe[adap->active_fe].pid_filter(adap, dvbdmxfeed->index, dvbdmxfeed->pid, onoff);




 if (adap->feedcount == onoff && adap->feedcount > 0) {
  deb_ts("controlling pid parser\n");
  if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
   adap->props.fe[adap->active_fe].caps &
   DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF &&
   adap->props.fe[adap->active_fe].pid_filter_ctrl != ((void*)0)) {
   ret = adap->props.fe[adap->active_fe].pid_filter_ctrl(adap,
    adap->fe_adap[adap->active_fe].pid_filtering);
   if (ret < 0) {
    err("could not handle pid_parser");
    return ret;
   }
  }
  deb_ts("start feeding\n");
  if (adap->props.fe[adap->active_fe].streaming_ctrl != ((void*)0)) {
   ret = adap->props.fe[adap->active_fe].streaming_ctrl(adap, 1);
   if (ret < 0) {
    err("error while enabling fifo.");
    return ret;
   }
  }

  deb_ts("submitting all URBs\n");
  usb_urb_submit(&adap->fe_adap[adap->active_fe].stream);
 }
 return 0;
}
