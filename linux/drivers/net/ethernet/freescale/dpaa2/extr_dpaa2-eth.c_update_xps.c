
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ num_tc; } ;
struct dpaa2_eth_priv {struct dpaa2_eth_fq* fq; struct net_device* net_dev; } ;
struct dpaa2_eth_fq {int target_cpu; } ;
struct cpumask {int dummy; } ;


 int cpumask_clear (struct cpumask*) ;
 int cpumask_set_cpu (int ,struct cpumask*) ;
 int dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 int netdev_warn_once (struct net_device*,char*) ;
 int netif_set_xps_queue (struct net_device*,struct cpumask*,int) ;

__attribute__((used)) static int update_xps(struct dpaa2_eth_priv *priv)
{
 struct net_device *net_dev = priv->net_dev;
 struct cpumask xps_mask;
 struct dpaa2_eth_fq *fq;
 int i, num_queues, netdev_queues;
 int err = 0;

 num_queues = dpaa2_eth_queue_count(priv);
 netdev_queues = (net_dev->num_tc ? : 1) * num_queues;




 for (i = 0; i < netdev_queues; i++) {
  fq = &priv->fq[i % num_queues];

  cpumask_clear(&xps_mask);
  cpumask_set_cpu(fq->target_cpu, &xps_mask);

  err = netif_set_xps_queue(net_dev, &xps_mask, i);
  if (err) {
   netdev_warn_once(net_dev, "Error setting XPS queue\n");
   break;
  }
 }

 return err;
}
