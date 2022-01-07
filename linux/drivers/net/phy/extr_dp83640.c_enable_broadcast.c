
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BC_WRITE ;
 int PAGESEL ;
 int PHYCR2 ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static void enable_broadcast(struct phy_device *phydev, int init_page, int on)
{
 int val;
 phy_write(phydev, PAGESEL, 0);
 val = phy_read(phydev, PHYCR2);
 if (on)
  val |= BC_WRITE;
 else
  val &= ~BC_WRITE;
 phy_write(phydev, PHYCR2, val);
 phy_write(phydev, PAGESEL, init_page);
}
