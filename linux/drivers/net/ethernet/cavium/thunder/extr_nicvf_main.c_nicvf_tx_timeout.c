
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {int reset_task; TYPE_1__* drv_stats; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_timeout; } ;


 struct nicvf* netdev_priv (struct net_device*) ;
 int netif_warn (struct nicvf*,int ,struct net_device*,char*) ;
 int schedule_work (int *) ;
 int this_cpu_inc (int ) ;
 int tx_err ;

__attribute__((used)) static void nicvf_tx_timeout(struct net_device *dev)
{
 struct nicvf *nic = netdev_priv(dev);

 netif_warn(nic, tx_err, dev, "Transmit timed out, resetting\n");

 this_cpu_inc(nic->drv_stats->tx_timeout);
 schedule_work(&nic->reset_task);
}
