
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int TXC_REQUIRED_DEVS ;
 int ef4_mdio_links_ok (struct ef4_nic*,int ) ;

__attribute__((used)) static bool txc43128_phy_read_link(struct ef4_nic *efx)
{
 return ef4_mdio_links_ok(efx, TXC_REQUIRED_DEVS);
}
