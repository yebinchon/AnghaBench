
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int ADIN1300_RX_ERR_CNT ;
 int ARRAY_SIZE (int ) ;
 int adin_get_stat (struct phy_device*,int) ;
 int adin_hw_stats ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static void adin_get_stats(struct phy_device *phydev,
      struct ethtool_stats *stats, u64 *data)
{
 int i, rc;


 rc = phy_read(phydev, ADIN1300_RX_ERR_CNT);
 if (rc < 0)
  return;

 for (i = 0; i < ARRAY_SIZE(adin_hw_stats); i++)
  data[i] = adin_get_stat(phydev, i);
}
