
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int kszphy_get_stat (struct phy_device*,int) ;
 int kszphy_hw_stats ;

__attribute__((used)) static void kszphy_get_stats(struct phy_device *phydev,
        struct ethtool_stats *stats, u64 *data)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(kszphy_hw_stats); i++)
  data[i] = kszphy_get_stat(phydev, i);
}
