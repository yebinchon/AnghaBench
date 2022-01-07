
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* free ) (struct b43_wldev*) ;} ;


 int stub1 (struct b43_wldev*) ;

void b43_phy_free(struct b43_wldev *dev)
{
 dev->phy.ops->free(dev);
 dev->phy.ops = ((void*)0);
}
