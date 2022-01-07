
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int ef4_mdio_write (struct ef4_nic*,int,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void qt2025c_restart_firmware(struct ef4_nic *efx)
{

 ef4_mdio_write(efx, 3, 0xe854, 0x00c0);
 ef4_mdio_write(efx, 3, 0xe854, 0x0040);
 msleep(50);
}
