
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int bcm_phy_hw_stats ;

int bcm_phy_get_sset_count(struct phy_device *phydev)
{
 return ARRAY_SIZE(bcm_phy_hw_stats);
}
