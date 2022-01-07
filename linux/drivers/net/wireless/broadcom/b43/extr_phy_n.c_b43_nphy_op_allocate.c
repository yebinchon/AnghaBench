
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct b43_phy_n* kzalloc (int,int ) ;

__attribute__((used)) static int b43_nphy_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy;

 nphy = kzalloc(sizeof(*nphy), GFP_KERNEL);
 if (!nphy)
  return -ENOMEM;

 dev->phy.n = nphy;

 return 0;
}
