
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int ef4_remove_channels (struct ef4_nic*) ;
 int ef4_remove_filters (struct ef4_nic*) ;
 int ef4_remove_nic (struct ef4_nic*) ;
 int ef4_remove_port (struct ef4_nic*) ;

__attribute__((used)) static void ef4_remove_all(struct ef4_nic *efx)
{
 ef4_remove_channels(efx);
 ef4_remove_filters(efx);
 ef4_remove_port(efx);
 ef4_remove_nic(efx);
}
