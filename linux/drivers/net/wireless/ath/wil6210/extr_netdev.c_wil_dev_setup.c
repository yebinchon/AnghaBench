
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int max_mtu; } ;


 int WIL_TX_Q_LEN_DEFAULT ;
 int ether_setup (struct net_device*) ;
 int mtu_max ;

__attribute__((used)) static void wil_dev_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->max_mtu = mtu_max;
 dev->tx_queue_len = WIL_TX_Q_LEN_DEFAULT;
}
