
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pid_filter_ctrl ) (int ,int) ;} ;
struct state {TYPE_1__ ops; } ;
struct dvb_usb_adapter {int * fe; } ;


 struct state* adap_to_priv (struct dvb_usb_adapter*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int af9035_pid_filter_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 struct state *state = adap_to_priv(adap);

 return state->ops.pid_filter_ctrl(adap->fe[0], onoff);
}
