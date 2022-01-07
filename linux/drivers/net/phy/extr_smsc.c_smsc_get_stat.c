
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smsc_hw_stat {int reg; } ;
struct phy_device {int dummy; } ;


 int U64_MAX ;
 int phy_read (struct phy_device*,int ) ;
 struct smsc_hw_stat* smsc_hw_stats ;

__attribute__((used)) static u64 smsc_get_stat(struct phy_device *phydev, int i)
{
 struct smsc_hw_stat stat = smsc_hw_stats[i];
 int val;
 u64 ret;

 val = phy_read(phydev, stat.reg);
 if (val < 0)
  ret = U64_MAX;
 else
  ret = val;

 return ret;
}
