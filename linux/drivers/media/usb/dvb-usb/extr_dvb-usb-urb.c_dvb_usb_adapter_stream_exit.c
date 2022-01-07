
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_frontends; } ;
struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__ props; } ;
struct TYPE_4__ {int stream; } ;


 int usb_urb_exit (int *) ;

int dvb_usb_adapter_stream_exit(struct dvb_usb_adapter *adap)
{
 int i;
 for (i = 0; i < adap->props.num_frontends; i++)
  usb_urb_exit(&adap->fe_adap[i].stream);
 return 0;
}
