
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int igbvf_set_multi (struct net_device*) ;
 int igbvf_set_uni (struct net_device*) ;

__attribute__((used)) static void igbvf_set_rx_mode(struct net_device *netdev)
{
 igbvf_set_multi(netdev);
 igbvf_set_uni(netdev);
}
