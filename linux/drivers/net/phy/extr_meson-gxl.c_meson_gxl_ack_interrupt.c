
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int INTSRC_FLAG ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int meson_gxl_ack_interrupt(struct phy_device *phydev)
{
 int ret = phy_read(phydev, INTSRC_FLAG);

 return ret < 0 ? ret : 0;
}
