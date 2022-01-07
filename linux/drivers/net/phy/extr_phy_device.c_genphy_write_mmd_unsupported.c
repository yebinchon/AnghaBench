
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int EOPNOTSUPP ;

int genphy_write_mmd_unsupported(struct phy_device *phdev, int devnum,
     u16 regnum, u16 val)
{
 return -EOPNOTSUPP;
}
