
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct amd8111e_priv {int ext_phy_id; int ext_phy_addr; } ;


 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 scalar_t__ amd8111e_read_phy (struct amd8111e_priv*,int,int ,int*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void amd8111e_probe_ext_phy(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int i;

 for (i = 0x1e; i >= 0; i--) {
  u32 id1, id2;

  if (amd8111e_read_phy(lp, i, MII_PHYSID1, &id1))
   continue;
  if (amd8111e_read_phy(lp, i, MII_PHYSID2, &id2))
   continue;
  lp->ext_phy_id = (id1 << 16) | id2;
  lp->ext_phy_addr = i;
  return;
 }
 lp->ext_phy_id = 0;
 lp->ext_phy_addr = 1;
}
