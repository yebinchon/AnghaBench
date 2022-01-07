
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {size_t port; int hw; int netdev; } ;
struct net_device {int dummy; } ;


 int CSR_STOP ;
 int KERN_DEBUG ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_printk (struct skge_port*,int ,int ,int ,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int skge_tx_clean (struct net_device*) ;
 int skge_write8 (int ,int ,int ) ;
 int timer ;
 int * txqaddr ;

__attribute__((used)) static void skge_tx_timeout(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);

 netif_printk(skge, timer, KERN_DEBUG, skge->netdev, "tx timeout\n");

 skge_write8(skge->hw, Q_ADDR(txqaddr[skge->port], Q_CSR), CSR_STOP);
 skge_tx_clean(dev);
 netif_wake_queue(dev);
}
