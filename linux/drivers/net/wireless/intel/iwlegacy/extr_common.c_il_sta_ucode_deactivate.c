
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct il_station_entry {int dummy; } ;
struct il_priv {TYPE_1__* stations; } ;
struct TYPE_2__ {int used; } ;


 int D_ASSOC (char*,size_t) ;
 int IL_ERR (char*,size_t) ;
 int IL_STA_DRIVER_ACTIVE ;
 int IL_STA_UCODE_ACTIVE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
il_sta_ucode_deactivate(struct il_priv *il, u8 sta_id)
{

 if ((il->stations[sta_id].
      used & (IL_STA_UCODE_ACTIVE | IL_STA_DRIVER_ACTIVE)) !=
     IL_STA_UCODE_ACTIVE)
  IL_ERR("removed non active STA %u\n", sta_id);

 il->stations[sta_id].used &= ~IL_STA_UCODE_ACTIVE;

 memset(&il->stations[sta_id], 0, sizeof(struct il_station_entry));
 D_ASSOC("Removed STA %u\n", sta_id);
}
