
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* init_phy ) (struct ef4_nic*) ;} ;


 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int TXC_ALRGS_ATXAMP0 ;
 int TXC_ALRGS_ATXAMP1 ;
 int TXC_ALRGS_ATXPRE0 ;
 int TXC_ALRGS_ATXPRE1 ;
 int TXC_ATXAMP_0820_BOTH ;
 int TXC_ATXAMP_DEFAULT ;
 int TXC_ATXPRE_DEFAULT ;
 int TXC_ATXPRE_NONE ;
 int TXC_MCTL_RXLED_LBN ;
 int TXC_MCTL_TXLED_LBN ;
 int TXC_MRGS_CTL ;
 int ef4_mdio_read (struct ef4_nic*,int ,int ) ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int) ;
 TYPE_2__* falcon_board (struct ef4_nic*) ;
 int stub1 (struct ef4_nic*) ;
 int txc_reset_logic (struct ef4_nic*) ;

__attribute__((used)) static void txc_apply_defaults(struct ef4_nic *efx)
{
 int mctrl;







 ef4_mdio_write(efx, MDIO_MMD_PHYXS, TXC_ALRGS_ATXPRE0, TXC_ATXPRE_NONE);
 ef4_mdio_write(efx, MDIO_MMD_PHYXS, TXC_ALRGS_ATXPRE1, TXC_ATXPRE_NONE);


 ef4_mdio_write(efx, MDIO_MMD_PHYXS,
         TXC_ALRGS_ATXAMP0, TXC_ATXAMP_0820_BOTH);
 ef4_mdio_write(efx, MDIO_MMD_PHYXS,
         TXC_ALRGS_ATXAMP1, TXC_ATXAMP_0820_BOTH);




 ef4_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXPRE0, TXC_ATXPRE_DEFAULT);
 ef4_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXPRE1, TXC_ATXPRE_DEFAULT);
 ef4_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXAMP0, TXC_ATXAMP_DEFAULT);
 ef4_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXAMP1, TXC_ATXAMP_DEFAULT);


 mctrl = ef4_mdio_read(efx, MDIO_MMD_PHYXS, TXC_MRGS_CTL);


 mctrl &= ~((1 << TXC_MCTL_TXLED_LBN) | (1 << TXC_MCTL_RXLED_LBN));
 ef4_mdio_write(efx, MDIO_MMD_PHYXS, TXC_MRGS_CTL, mctrl);


 txc_reset_logic(efx);

 falcon_board(efx)->type->init_phy(efx);
}
