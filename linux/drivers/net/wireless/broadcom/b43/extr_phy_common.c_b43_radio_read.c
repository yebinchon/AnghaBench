
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; scalar_t__ writes_counter; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* radio_read ) (struct b43_wldev*,int ) ;} ;


 int assert_mac_suspended (struct b43_wldev*) ;
 int stub1 (struct b43_wldev*,int ) ;

u16 b43_radio_read(struct b43_wldev *dev, u16 reg)
{
 assert_mac_suspended(dev);
 dev->phy.writes_counter = 0;
 return dev->phy.ops->radio_read(dev, reg);
}
