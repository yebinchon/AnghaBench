
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;


 int NETIF_F_SG ;

__attribute__((used)) static bool xennet_can_sg(struct net_device *dev)
{
 return dev->features & NETIF_F_SG;
}
