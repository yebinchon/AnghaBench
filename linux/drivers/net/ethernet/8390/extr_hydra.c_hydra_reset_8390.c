
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static void hydra_reset_8390(struct net_device *dev)
{
    netdev_info(dev, "Hydra hw reset not there\n");
}
