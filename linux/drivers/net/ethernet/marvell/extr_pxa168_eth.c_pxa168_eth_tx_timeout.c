
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int tx_timeout_task; int tx_desc_count; } ;
struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*,int ) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pxa168_eth_tx_timeout(struct net_device *dev)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);

 netdev_info(dev, "TX timeout  desc_count %d\n", pep->tx_desc_count);

 schedule_work(&pep->tx_timeout_task);
}
