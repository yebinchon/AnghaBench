
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int net_dev; } ;


 int EIO ;
 int MDIO_MMD_AN ;
 int MDIO_STAT2 ;
 int MDIO_STAT2_DEVPRST ;
 int MDIO_STAT2_DEVPRST_VAL ;
 int ef4_mdio_read (struct ef4_nic*,int,int ) ;
 int hw ;
 int netif_err (struct ef4_nic*,int ,int ,char*,int) ;

__attribute__((used)) static int ef4_mdio_check_mmd(struct ef4_nic *efx, int mmd)
{
 int status;

 if (mmd != MDIO_MMD_AN) {

  status = ef4_mdio_read(efx, mmd, MDIO_STAT2);
  if ((status & MDIO_STAT2_DEVPRST) != MDIO_STAT2_DEVPRST_VAL) {
   netif_err(efx, hw, efx->net_dev,
      "PHY MMD %d not responding.\n", mmd);
   return -EIO;
  }
 }

 return 0;
}
