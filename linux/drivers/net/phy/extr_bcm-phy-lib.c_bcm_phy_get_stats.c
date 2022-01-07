
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int bcm_phy_get_stat (struct phy_device*,int *,unsigned int) ;
 int bcm_phy_hw_stats ;

void bcm_phy_get_stats(struct phy_device *phydev, u64 *shadow,
         struct ethtool_stats *stats, u64 *data)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(bcm_phy_hw_stats); i++)
  data[i] = bcm_phy_get_stat(phydev, shadow, i);
}
