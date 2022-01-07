
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_LASI_CTRL ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int ) ;

__attribute__((used)) static void txc43128_phy_fini(struct ef4_nic *efx)
{

 ef4_mdio_write(efx, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_CTRL, 0);
}
