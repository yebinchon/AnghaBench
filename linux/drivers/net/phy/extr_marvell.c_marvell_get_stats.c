
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int marvell_get_sset_count (struct phy_device*) ;
 int marvell_get_stat (struct phy_device*,int) ;

__attribute__((used)) static void marvell_get_stats(struct phy_device *phydev,
         struct ethtool_stats *stats, u64 *data)
{
 int count = marvell_get_sset_count(phydev);
 int i;

 for (i = 0; i < count; i++)
  data[i] = marvell_get_stat(phydev, i);
}
