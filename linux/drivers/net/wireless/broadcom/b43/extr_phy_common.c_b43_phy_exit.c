
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_full_init; struct b43_phy_operations* ops; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_operations {int (* exit ) (struct b43_wldev*) ;} ;


 int b43_software_rfkill (struct b43_wldev*,int) ;
 int stub1 (struct b43_wldev*) ;

void b43_phy_exit(struct b43_wldev *dev)
{
 const struct b43_phy_operations *ops = dev->phy.ops;

 b43_software_rfkill(dev, 1);
 dev->phy.do_full_init = 1;
 if (ops->exit)
  ops->exit(dev);
}
