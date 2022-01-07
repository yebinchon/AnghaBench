
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mmds; } ;
struct ef4_nic {int link_advertising; TYPE_1__* phy_op; TYPE_2__ mdio; } ;
struct TYPE_3__ {int (* set_npage_adv ) (struct ef4_nic*,int) ;} ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int ADVERTISE_RESV ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_AN_CTRL1_ENABLE ;
 int MDIO_AN_CTRL1_RESTART ;
 int MDIO_AN_CTRL1_XNP ;
 int MDIO_CTRL1 ;
 int MDIO_DEVS_AN ;
 int MDIO_MMD_AN ;
 int WARN_ON (int) ;
 int ef4_mdio_read (struct ef4_nic*,int ,int ) ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int) ;
 int stub1 (struct ef4_nic*,int) ;

void ef4_mdio_an_reconfigure(struct ef4_nic *efx)
{
 int reg;

 WARN_ON(!(efx->mdio.mmds & MDIO_DEVS_AN));


 reg = ADVERTISE_CSMA | ADVERTISE_RESV;
 if (efx->link_advertising & ADVERTISED_Pause)
  reg |= ADVERTISE_PAUSE_CAP;
 if (efx->link_advertising & ADVERTISED_Asym_Pause)
  reg |= ADVERTISE_PAUSE_ASYM;
 ef4_mdio_write(efx, MDIO_MMD_AN, MDIO_AN_ADVERTISE, reg);


 efx->phy_op->set_npage_adv(efx, efx->link_advertising);


 reg = ef4_mdio_read(efx, MDIO_MMD_AN, MDIO_CTRL1);
 reg |= MDIO_AN_CTRL1_ENABLE | MDIO_AN_CTRL1_RESTART | MDIO_AN_CTRL1_XNP;
 ef4_mdio_write(efx, MDIO_MMD_AN, MDIO_CTRL1, reg);
}
