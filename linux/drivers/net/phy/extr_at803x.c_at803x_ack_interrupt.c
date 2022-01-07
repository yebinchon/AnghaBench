
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AT803X_INTR_STATUS ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int at803x_ack_interrupt(struct phy_device *phydev)
{
 int err;

 err = phy_read(phydev, AT803X_INTR_STATUS);

 return (err < 0) ? err : 0;
}
