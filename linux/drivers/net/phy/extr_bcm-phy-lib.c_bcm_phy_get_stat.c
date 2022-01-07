
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct bcm_phy_hw_stat {int shift; int bits; int reg; } ;


 int U64_MAX ;
 struct bcm_phy_hw_stat* bcm_phy_hw_stats ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static u64 bcm_phy_get_stat(struct phy_device *phydev, u64 *shadow,
       unsigned int i)
{
 struct bcm_phy_hw_stat stat = bcm_phy_hw_stats[i];
 int val;
 u64 ret;

 val = phy_read(phydev, stat.reg);
 if (val < 0) {
  ret = U64_MAX;
 } else {
  val >>= stat.shift;
  val = val & ((1 << stat.bits) - 1);
  shadow[i] += val;
  ret = shadow[i];
 }

 return ret;
}
