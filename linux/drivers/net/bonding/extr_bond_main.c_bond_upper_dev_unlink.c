
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* dev; } ;
struct bonding {int dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_SLAVE ;
 int netdev_upper_dev_unlink (TYPE_1__*,int ) ;

__attribute__((used)) static void bond_upper_dev_unlink(struct bonding *bond, struct slave *slave)
{
 netdev_upper_dev_unlink(slave->dev, bond->dev);
 slave->dev->flags &= ~IFF_SLAVE;
}
