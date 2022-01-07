
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_LAN83C185_ISF ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int smsc_phy_ack_interrupt(struct phy_device *phydev)
{
 int rc = phy_read (phydev, MII_LAN83C185_ISF);

 return rc < 0 ? rc : 0;
}
