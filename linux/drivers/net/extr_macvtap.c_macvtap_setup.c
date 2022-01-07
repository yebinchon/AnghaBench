
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; } ;


 int TUN_READQ_SIZE ;
 int macvlan_common_setup (struct net_device*) ;

__attribute__((used)) static void macvtap_setup(struct net_device *dev)
{
 macvlan_common_setup(dev);
 dev->tx_queue_len = TUN_READQ_SIZE;
}
