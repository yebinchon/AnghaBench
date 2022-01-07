
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; struct dibusb_state* priv; } ;
struct TYPE_3__ {scalar_t__ (* pid_parse ) (int ,int) ;} ;
struct dibusb_state {TYPE_1__ ops; } ;
struct TYPE_4__ {int fe; } ;


 int err (char*) ;
 scalar_t__ stub1 (int ,int) ;

int dibusb_pid_filter_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 if (adap->priv != ((void*)0)) {
  struct dibusb_state *st = adap->priv;
  if (st->ops.pid_parse != ((void*)0))
   if (st->ops.pid_parse(adap->fe_adap[0].fe, onoff) < 0)
    err("could not handle pid_parser");
 }
 return 0;
}
