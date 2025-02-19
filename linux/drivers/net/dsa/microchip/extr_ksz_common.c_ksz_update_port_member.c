
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_port {scalar_t__ stp_state; scalar_t__ member; } ;
struct ksz_device {int port_cnt; int cpu_port; int member; TYPE_1__* dev_ops; struct ksz_port* ports; } ;
struct TYPE_2__ {int (* cfg_port_member ) (struct ksz_device*,int,scalar_t__) ;} ;


 scalar_t__ BR_STATE_FORWARDING ;
 int stub1 (struct ksz_device*,int,scalar_t__) ;

void ksz_update_port_member(struct ksz_device *dev, int port)
{
 struct ksz_port *p;
 int i;

 for (i = 0; i < dev->port_cnt; i++) {
  if (i == port || i == dev->cpu_port)
   continue;
  p = &dev->ports[i];
  if (!(dev->member & (1 << i)))
   continue;


  if (p->stp_state == BR_STATE_FORWARDING &&
      p->member != dev->member)
   dev->dev_ops->cfg_port_member(dev, i, dev->member);
 }
}
