
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct aqr107_hw_stat {int size; scalar_t__ reg; } ;


 int GENMASK (int,int ) ;
 int MDIO_MMD_C22EXT ;
 int U64_MAX ;
 struct aqr107_hw_stat* aqr107_hw_stats ;
 int min (int,int) ;
 int phy_read_mmd (struct phy_device*,int ,scalar_t__) ;

__attribute__((used)) static u64 aqr107_get_stat(struct phy_device *phydev, int index)
{
 const struct aqr107_hw_stat *stat = aqr107_hw_stats + index;
 int len_l = min(stat->size, 16);
 int len_h = stat->size - len_l;
 u64 ret;
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_C22EXT, stat->reg);
 if (val < 0)
  return U64_MAX;

 ret = val & GENMASK(len_l - 1, 0);
 if (len_h) {
  val = phy_read_mmd(phydev, MDIO_MMD_C22EXT, stat->reg + 1);
  if (val < 0)
   return U64_MAX;

  ret += (val & GENMASK(len_h - 1, 0)) << 16;
 }

 return ret;
}
