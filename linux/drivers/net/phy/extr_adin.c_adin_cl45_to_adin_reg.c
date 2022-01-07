
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;
struct adin_clause45_mmd_map {int devad; int cl45_regnum; int adin_regnum; } ;


 int ARRAY_SIZE (struct adin_clause45_mmd_map*) ;
 int EINVAL ;
 int MDIO_MMD_VEND1 ;
 struct adin_clause45_mmd_map* adin_clause45_mmd_map ;
 int phydev_err (struct phy_device*,char*,int,int) ;

__attribute__((used)) static int adin_cl45_to_adin_reg(struct phy_device *phydev, int devad,
     u16 cl45_regnum)
{
 struct adin_clause45_mmd_map *m;
 int i;

 if (devad == MDIO_MMD_VEND1)
  return cl45_regnum;

 for (i = 0; i < ARRAY_SIZE(adin_clause45_mmd_map); i++) {
  m = &adin_clause45_mmd_map[i];
  if (m->devad == devad && m->cl45_regnum == cl45_regnum)
   return m->adin_regnum;
 }

 phydev_err(phydev,
     "No translation available for devad: %d reg: %04x\n",
     devad, cl45_regnum);

 return -EINVAL;
}
