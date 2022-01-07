
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;


 int axienet_set_mac_address (struct net_device*,int ) ;

__attribute__((used)) static int netdev_set_mac_address(struct net_device *ndev, void *p)
{
 struct sockaddr *addr = p;
 axienet_set_mac_address(ndev, addr->sa_data);
 return 0;
}
