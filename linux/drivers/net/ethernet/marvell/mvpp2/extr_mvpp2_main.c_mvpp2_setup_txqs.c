
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_tx_queue {int dummy; } ;
struct mvpp2_port {int ntxqs; struct mvpp2_tx_queue** txqs; scalar_t__ has_tx_irqs; int dev; } ;


 int cpumask_of (int) ;
 int mvpp2_cleanup_txqs (struct mvpp2_port*) ;
 int mvpp2_tx_pkts_coal_set (struct mvpp2_port*,struct mvpp2_tx_queue*) ;
 int mvpp2_tx_time_coal_set (struct mvpp2_port*) ;
 int mvpp2_txq_init (struct mvpp2_port*,struct mvpp2_tx_queue*) ;
 int mvpp2_txq_sent_counter_clear ;
 int netif_set_xps_queue (int ,int ,int) ;
 int num_present_cpus () ;
 int on_each_cpu (int ,struct mvpp2_port*,int) ;

__attribute__((used)) static int mvpp2_setup_txqs(struct mvpp2_port *port)
{
 struct mvpp2_tx_queue *txq;
 int queue, err, cpu;

 for (queue = 0; queue < port->ntxqs; queue++) {
  txq = port->txqs[queue];
  err = mvpp2_txq_init(port, txq);
  if (err)
   goto err_cleanup;


  cpu = queue % num_present_cpus();
  netif_set_xps_queue(port->dev, cpumask_of(cpu), queue);
 }

 if (port->has_tx_irqs) {
  mvpp2_tx_time_coal_set(port);
  for (queue = 0; queue < port->ntxqs; queue++) {
   txq = port->txqs[queue];
   mvpp2_tx_pkts_coal_set(port, txq);
  }
 }

 on_each_cpu(mvpp2_txq_sent_counter_clear, port, 1);
 return 0;

err_cleanup:
 mvpp2_cleanup_txqs(port);
 return err;
}
