
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* net_dev; int name; } ;
struct TYPE_2__ {int name; } ;


 int ef4_mtd_rename (struct ef4_nic*) ;
 int ef4_set_channel_names (struct ef4_nic*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ef4_update_name(struct ef4_nic *efx)
{
 strcpy(efx->name, efx->net_dev->name);
 ef4_mtd_rename(efx);
 ef4_set_channel_names(efx);
}
