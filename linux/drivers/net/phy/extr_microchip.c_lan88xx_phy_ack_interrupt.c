
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int LAN88XX_INT_STS ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int lan88xx_phy_ack_interrupt(struct phy_device *phydev)
{
 int rc = phy_read(phydev, LAN88XX_INT_STS);

 return rc < 0 ? rc : 0;
}
