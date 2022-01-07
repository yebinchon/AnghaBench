
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* pid_filter ) (int ,int,int ,int) ;} ;
struct state {TYPE_1__ ops; } ;
struct dvb_usb_adapter {int * fe; } ;


 struct state* adap_to_priv (struct dvb_usb_adapter*) ;
 int stub1 (int ,int,int ,int) ;

__attribute__((used)) static int af9035_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid,
  int onoff)
{
 struct state *state = adap_to_priv(adap);

 return state->ops.pid_filter(adap->fe[0], index, pid, onoff);
}
