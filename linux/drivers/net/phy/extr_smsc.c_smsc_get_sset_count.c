
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int smsc_hw_stats ;

__attribute__((used)) static int smsc_get_sset_count(struct phy_device *phydev)
{
 return ARRAY_SIZE(smsc_hw_stats);
}
