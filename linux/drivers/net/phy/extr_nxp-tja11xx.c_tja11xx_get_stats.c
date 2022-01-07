
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_3__ {int mask; int off; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int U64_MAX ;
 int phy_read (struct phy_device*,int ) ;
 TYPE_1__* tja11xx_hw_stats ;

__attribute__((used)) static void tja11xx_get_stats(struct phy_device *phydev,
         struct ethtool_stats *stats, u64 *data)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(tja11xx_hw_stats); i++) {
  ret = phy_read(phydev, tja11xx_hw_stats[i].reg);
  if (ret < 0)
   data[i] = U64_MAX;
  else {
   data[i] = ret & tja11xx_hw_stats[i].mask;
   data[i] >>= tja11xx_hw_stats[i].off;
  }
 }
}
