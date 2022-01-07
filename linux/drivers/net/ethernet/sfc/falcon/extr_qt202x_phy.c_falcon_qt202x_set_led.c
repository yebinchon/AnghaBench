
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_QUAKE_LED0_REG ;
 int ef4_mdio_write (struct ef4_nic*,int ,int,int) ;

void falcon_qt202x_set_led(struct ef4_nic *p, int led, int mode)
{
 int addr = MDIO_QUAKE_LED0_REG + led;
 ef4_mdio_write(p, MDIO_MMD_PMAPMD, addr, mode);
}
