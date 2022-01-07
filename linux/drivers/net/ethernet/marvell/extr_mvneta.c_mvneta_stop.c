
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct mvneta_port {int is_stopped; int ports; int node_dead; int node_online; int lock; int neta_armada3700; } ;


 int CPUHP_NET_MVNETA_DEAD ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int free_irq (int ,struct mvneta_port*) ;
 int free_percpu_irq (int ,int ) ;
 int mvneta_cleanup_rxqs (struct mvneta_port*) ;
 int mvneta_cleanup_txqs (struct mvneta_port*) ;
 int mvneta_mdio_remove (struct mvneta_port*) ;
 int mvneta_percpu_disable ;
 int mvneta_stop_dev (struct mvneta_port*) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int on_each_cpu (int ,struct mvneta_port*,int) ;
 int online_hpstate ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mvneta_stop(struct net_device *dev)
{
 struct mvneta_port *pp = netdev_priv(dev);

 if (!pp->neta_armada3700) {





  spin_lock(&pp->lock);
  pp->is_stopped = 1;
  spin_unlock(&pp->lock);

  mvneta_stop_dev(pp);
  mvneta_mdio_remove(pp);

  cpuhp_state_remove_instance_nocalls(online_hpstate,
          &pp->node_online);
  cpuhp_state_remove_instance_nocalls(CPUHP_NET_MVNETA_DEAD,
          &pp->node_dead);
  on_each_cpu(mvneta_percpu_disable, pp, 1);
  free_percpu_irq(dev->irq, pp->ports);
 } else {
  mvneta_stop_dev(pp);
  mvneta_mdio_remove(pp);
  free_irq(dev->irq, pp);
 }

 mvneta_cleanup_rxqs(pp);
 mvneta_cleanup_txqs(pp);

 return 0;
}
