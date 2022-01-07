
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_ptp_ops {int (* port_disable ) (struct mv88e6xxx_chip*,int) ;} ;
struct mv88e6xxx_port_hwtstamp {int port_id; int rx_queue2; int rx_queue; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port_hwtstamp* port_hwtstamp; TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct mv88e6xxx_ptp_ops* ptp_ops; } ;


 int skb_queue_head_init (int *) ;
 int stub1 (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static int mv88e6xxx_hwtstamp_port_setup(struct mv88e6xxx_chip *chip, int port)
{
 const struct mv88e6xxx_ptp_ops *ptp_ops = chip->info->ops->ptp_ops;
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];

 ps->port_id = port;

 skb_queue_head_init(&ps->rx_queue);
 skb_queue_head_init(&ps->rx_queue2);

 if (ptp_ops->port_disable)
  return ptp_ops->port_disable(chip, port);

 return 0;
}
