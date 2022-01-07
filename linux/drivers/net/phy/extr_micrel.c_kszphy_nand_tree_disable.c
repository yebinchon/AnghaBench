
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int KSZPHY_OMSO_NAND_TREE_ON ;
 int MII_KSZPHY_OMSO ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phydev_err (struct phy_device*,char*) ;

__attribute__((used)) static int kszphy_nand_tree_disable(struct phy_device *phydev)
{
 int ret;

 ret = phy_read(phydev, MII_KSZPHY_OMSO);
 if (ret < 0)
  goto out;

 if (!(ret & KSZPHY_OMSO_NAND_TREE_ON))
  return 0;

 ret = phy_write(phydev, MII_KSZPHY_OMSO,
   ret & ~KSZPHY_OMSO_NAND_TREE_ON);
out:
 if (ret)
  phydev_err(phydev, "failed to disable NAND tree mode\n");

 return ret;
}
