
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int TXC_GPIO_DIR ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int,int) ;

void falcon_txc_set_gpio_dir(struct ef4_nic *efx, int pin, int dir)
{
 ef4_mdio_set_flag(efx, MDIO_MMD_PHYXS, TXC_GPIO_DIR, 1 << pin, dir);
}
