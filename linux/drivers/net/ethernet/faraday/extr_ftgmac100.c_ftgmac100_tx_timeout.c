
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftgmac100 {int reset_task; scalar_t__ base; } ;


 scalar_t__ FTGMAC100_OFFSET_IER ;
 int iowrite32 (int ,scalar_t__) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ftgmac100_tx_timeout(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);


 iowrite32(0, priv->base + FTGMAC100_OFFSET_IER);


 schedule_work(&priv->reset_task);
}
