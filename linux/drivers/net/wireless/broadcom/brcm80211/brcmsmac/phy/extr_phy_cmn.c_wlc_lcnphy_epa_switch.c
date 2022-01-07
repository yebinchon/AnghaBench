
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_3__* d11core; TYPE_1__* sh; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {int drv_cc; } ;
struct TYPE_4__ {scalar_t__ chip; int boardflags; int physhim; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4313 ;
 int BFL_FEM ;
 int bcma_chipco_gpio_control (int *,int,int) ;
 int bcma_chipco_gpio_out (int *,int,int) ;
 int bcma_chipco_gpio_outen (int *,int,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int wlapi_bmac_get_txant (int ) ;

void wlc_lcnphy_epa_switch(struct brcms_phy *pi, bool mode)
{
 if ((pi->sh->chip == BCMA_CHIP_ID_BCM4313) &&
     (pi->sh->boardflags & BFL_FEM)) {
  if (mode) {
   u16 txant = 0;
   txant = wlapi_bmac_get_txant(pi->sh->physhim);
   if (txant == 1) {
    mod_phy_reg(pi, 0x44d, (0x1 << 2), (1) << 2);

    mod_phy_reg(pi, 0x44c, (0x1 << 2), (1) << 2);

   }

   bcma_chipco_gpio_control(&pi->d11core->bus->drv_cc,
       0x0, 0x0);
   bcma_chipco_gpio_out(&pi->d11core->bus->drv_cc,
          ~0x40, 0x40);
   bcma_chipco_gpio_outen(&pi->d11core->bus->drv_cc,
            ~0x40, 0x40);
  } else {
   mod_phy_reg(pi, 0x44c, (0x1 << 2), (0) << 2);

   mod_phy_reg(pi, 0x44d, (0x1 << 2), (0) << 2);

   bcma_chipco_gpio_out(&pi->d11core->bus->drv_cc,
          ~0x40, 0x00);
   bcma_chipco_gpio_outen(&pi->d11core->bus->drv_cc,
            ~0x40, 0x00);
   bcma_chipco_gpio_control(&pi->d11core->bus->drv_cc,
       0x0, 0x40);
  }
 }
}
