
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int TXC_GPIO_OUTPUT ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int,int) ;

void falcon_txc_set_gpio_val(struct ef4_nic *efx, int pin, int on)
{
 ef4_mdio_set_flag(efx, MDIO_MMD_PHYXS, TXC_GPIO_OUTPUT, 1 << pin, on);
}
