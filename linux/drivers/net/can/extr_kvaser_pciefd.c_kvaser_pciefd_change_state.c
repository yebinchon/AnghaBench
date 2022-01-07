
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int restart_ms; struct net_device* dev; } ;
struct kvaser_pciefd_can {TYPE_1__ can; int lock; } ;
struct can_frame {int dummy; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_STATE_BUS_OFF ;
 int can_bus_off (struct net_device*) ;
 int can_change_state (struct net_device*,struct can_frame*,int,int) ;
 int kvaser_pciefd_start_controller_flush (struct kvaser_pciefd_can*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_change_state(struct kvaser_pciefd_can *can,
           struct can_frame *cf,
           enum can_state new_state,
           enum can_state tx_state,
           enum can_state rx_state)
{
 can_change_state(can->can.dev, cf, tx_state, rx_state);

 if (new_state == CAN_STATE_BUS_OFF) {
  struct net_device *ndev = can->can.dev;
  unsigned long irq_flags;

  spin_lock_irqsave(&can->lock, irq_flags);
  netif_stop_queue(can->can.dev);
  spin_unlock_irqrestore(&can->lock, irq_flags);


  if (!can->can.restart_ms) {
   kvaser_pciefd_start_controller_flush(can);
   can_bus_off(ndev);
  }
 }
}
