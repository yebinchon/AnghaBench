
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int RTL8211F_INSR ;
 int phy_read_paged (struct phy_device*,int,int ) ;

__attribute__((used)) static int rtl8211f_ack_interrupt(struct phy_device *phydev)
{
 int err;

 err = phy_read_paged(phydev, 0xa43, RTL8211F_INSR);

 return (err < 0) ? err : 0;
}
