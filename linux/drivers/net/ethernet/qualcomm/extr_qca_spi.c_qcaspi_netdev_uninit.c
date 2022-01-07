
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcaspi {int rx_skb; scalar_t__ buffer_size; int rx_buffer; } ;
struct net_device {int dummy; } ;


 int dev_kfree_skb (int ) ;
 int kfree (int ) ;
 struct qcaspi* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
qcaspi_netdev_uninit(struct net_device *dev)
{
 struct qcaspi *qca = netdev_priv(dev);

 kfree(qca->rx_buffer);
 qca->buffer_size = 0;
 dev_kfree_skb(qca->rx_skb);
}
