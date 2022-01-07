
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int dev; } ;
struct TYPE_2__ {int nports; } ;
struct adapter {int sge; TYPE_1__ params; struct port_info* port; } ;





 int link_report (struct port_info*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int t1_sched_update_parms (int ,int,int ,unsigned int) ;

void t1_link_negotiated(struct adapter *adapter, int port_id, int link_stat,
   int speed, int duplex, int pause)
{
 struct port_info *p = &adapter->port[port_id];

 if (link_stat != netif_carrier_ok(p->dev)) {
  if (link_stat)
   netif_carrier_on(p->dev);
  else
   netif_carrier_off(p->dev);
  link_report(p);


  if ((speed > 0) && (adapter->params.nports > 1)) {
   unsigned int sched_speed = 10;
   switch (speed) {
   case 128:
    sched_speed = 1000;
    break;
   case 129:
    sched_speed = 100;
    break;
   case 130:
    sched_speed = 10;
    break;
   }
   t1_sched_update_parms(adapter->sge, port_id, 0, sched_speed);
  }
 }
}
