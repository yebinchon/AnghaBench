
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int MII_CNTL_RESET ;
 int MII_CONTROL ;
 int MII_STATUS ;
 int mdio_read (struct net_device*,int,int ) ;
 int mdio_write (struct net_device*,int,int ,int ) ;

__attribute__((used)) static u16 sis900_reset_phy(struct net_device *net_dev, int phy_addr)
{
 int i;
 u16 status;

 for (i = 0; i < 2; i++)
  status = mdio_read(net_dev, phy_addr, MII_STATUS);

 mdio_write( net_dev, phy_addr, MII_CONTROL, MII_CNTL_RESET );

 return status;
}
