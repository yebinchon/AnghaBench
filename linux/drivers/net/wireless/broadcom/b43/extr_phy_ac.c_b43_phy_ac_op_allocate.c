
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_ac* ac; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_ac {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct b43_phy_ac* kzalloc (int,int ) ;

__attribute__((used)) static int b43_phy_ac_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_ac *phy_ac;

 phy_ac = kzalloc(sizeof(*phy_ac), GFP_KERNEL);
 if (!phy_ac)
  return -ENOMEM;
 dev->phy.ac = phy_ac;

 return 0;
}
