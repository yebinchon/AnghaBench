
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int autoconf_media (struct net_device*) ;
 int de4x5_sw_reset (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
de4x5_init(struct net_device *dev)
{

    netif_stop_queue(dev);

    de4x5_sw_reset(dev);


    autoconf_media(dev);

    return 0;
}
