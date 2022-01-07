
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mvpp2_port_pcpu {int timer_scheduled; int tx_done_timer; } ;
struct mvpp2_port {int stats_work; int pcpu; TYPE_1__* priv; int has_tx_irqs; scalar_t__ link_irq; scalar_t__ phylink; } ;
struct TYPE_2__ {unsigned int nthreads; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (scalar_t__,struct mvpp2_port*) ;
 int hrtimer_cancel (int *) ;
 int mvpp22_pcs_reset_assert (struct mvpp2_port*) ;
 int mvpp2_cleanup_rxqs (struct mvpp2_port*) ;
 int mvpp2_cleanup_txqs (struct mvpp2_port*) ;
 int mvpp2_interrupts_mask ;
 int mvpp2_irqs_deinit (struct mvpp2_port*) ;
 int mvpp2_mac_reset_assert (struct mvpp2_port*) ;
 int mvpp2_shared_interrupt_mask_unmask (struct mvpp2_port*,int) ;
 int mvpp2_stop_dev (struct mvpp2_port*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int on_each_cpu (int ,struct mvpp2_port*,int) ;
 struct mvpp2_port_pcpu* per_cpu_ptr (int ,unsigned int) ;
 int phylink_disconnect_phy (scalar_t__) ;

__attribute__((used)) static int mvpp2_stop(struct net_device *dev)
{
 struct mvpp2_port *port = netdev_priv(dev);
 struct mvpp2_port_pcpu *port_pcpu;
 unsigned int thread;

 mvpp2_stop_dev(port);


 on_each_cpu(mvpp2_interrupts_mask, port, 1);
 mvpp2_shared_interrupt_mask_unmask(port, 1);

 if (port->phylink)
  phylink_disconnect_phy(port->phylink);
 if (port->link_irq)
  free_irq(port->link_irq, port);

 mvpp2_irqs_deinit(port);
 if (!port->has_tx_irqs) {
  for (thread = 0; thread < port->priv->nthreads; thread++) {
   port_pcpu = per_cpu_ptr(port->pcpu, thread);

   hrtimer_cancel(&port_pcpu->tx_done_timer);
   port_pcpu->timer_scheduled = 0;
  }
 }
 mvpp2_cleanup_rxqs(port);
 mvpp2_cleanup_txqs(port);

 cancel_delayed_work_sync(&port->stats_work);

 mvpp2_mac_reset_assert(port);
 mvpp22_pcs_reset_assert(port);

 return 0;
}
