
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct m920x_state {int ** filters; } ;
struct dvb_usb_adapter {size_t id; TYPE_1__* dev; } ;
struct TYPE_2__ {struct m920x_state* priv; } ;


 int m920x_update_filters (struct dvb_usb_adapter*) ;

__attribute__((used)) static int m920x_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid, int onoff)
{
 struct m920x_state *m = adap->dev->priv;

 m->filters[adap->id][index] = onoff ? pid : 0;

 return m920x_update_filters(adap);
}
