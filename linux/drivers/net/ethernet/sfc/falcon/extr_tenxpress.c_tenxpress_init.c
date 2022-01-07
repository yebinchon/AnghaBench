
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int CLK312_EN_LBN ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PMAPMD ;
 int PCS_TEST_SELECT_REG ;
 int PMA_PMA_LED_ACTIVITY_LBN ;
 int PMA_PMD_LED_CTRL_REG ;
 int PMA_PMD_LED_OVERR_REG ;
 int SFX7101_PMA_PMD_LED_DEFAULT ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int,int) ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int) ;

__attribute__((used)) static int tenxpress_init(struct ef4_nic *efx)
{

 ef4_mdio_write(efx, MDIO_MMD_PCS, PCS_TEST_SELECT_REG,
         1 << CLK312_EN_LBN);


 ef4_mdio_set_flag(efx, MDIO_MMD_PMAPMD, PMA_PMD_LED_CTRL_REG,
     1 << PMA_PMA_LED_ACTIVITY_LBN, 1);
 ef4_mdio_write(efx, MDIO_MMD_PMAPMD, PMA_PMD_LED_OVERR_REG,
         SFX7101_PMA_PMD_LED_DEFAULT);

 return 0;
}
