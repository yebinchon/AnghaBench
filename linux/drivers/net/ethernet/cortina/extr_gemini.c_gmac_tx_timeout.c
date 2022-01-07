
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int gmac_dump_dma_state (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static void gmac_tx_timeout(struct net_device *netdev)
{
 netdev_err(netdev, "Tx timeout\n");
 gmac_dump_dma_state(netdev);
}
