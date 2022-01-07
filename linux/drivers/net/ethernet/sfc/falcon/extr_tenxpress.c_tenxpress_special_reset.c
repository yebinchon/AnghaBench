
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int PMA_PMD_EXT_SSR_LBN ;
 int PMA_PMD_XCONTROL_REG ;
 int TENXPRESS_REQUIRED_DEVS ;
 int ef4_mdio_read (struct ef4_nic*,int ,int ) ;
 int ef4_mdio_wait_reset_mmds (struct ef4_nic*,int ) ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int) ;
 int falcon_start_nic_stats (struct ef4_nic*) ;
 int falcon_stop_nic_stats (struct ef4_nic*) ;
 int mdelay (int) ;
 int tenxpress_init (struct ef4_nic*) ;

__attribute__((used)) static int tenxpress_special_reset(struct ef4_nic *efx)
{
 int rc, reg;




 falcon_stop_nic_stats(efx);


 reg = ef4_mdio_read(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG);
 reg |= (1 << PMA_PMD_EXT_SSR_LBN);
 ef4_mdio_write(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG, reg);

 mdelay(200);


 rc = ef4_mdio_wait_reset_mmds(efx, TENXPRESS_REQUIRED_DEVS);
 if (rc < 0)
  goto out;


 rc = tenxpress_init(efx);
 if (rc < 0)
  goto out;


 mdelay(10);
out:
 falcon_start_nic_stats(efx);
 return rc;
}
