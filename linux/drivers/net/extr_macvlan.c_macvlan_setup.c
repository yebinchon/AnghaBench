
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;


 int IFF_NO_QUEUE ;
 int macvlan_common_setup (struct net_device*) ;

__attribute__((used)) static void macvlan_setup(struct net_device *dev)
{
 macvlan_common_setup(dev);
 dev->priv_flags |= IFF_NO_QUEUE;
}
