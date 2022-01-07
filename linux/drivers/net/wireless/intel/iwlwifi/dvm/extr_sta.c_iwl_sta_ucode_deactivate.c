
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_station_entry {int dummy; } ;
struct iwl_priv {TYPE_1__* stations; int sta_lock; } ;
struct TYPE_2__ {int used; } ;


 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,size_t) ;
 int IWL_ERR (struct iwl_priv*,char*,size_t) ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_UCODE_ACTIVE ;
 int lockdep_assert_held (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void iwl_sta_ucode_deactivate(struct iwl_priv *priv, u8 sta_id)
{
 lockdep_assert_held(&priv->sta_lock);


 if ((priv->stations[sta_id].used &
      (IWL_STA_UCODE_ACTIVE | IWL_STA_DRIVER_ACTIVE)) !=
       IWL_STA_UCODE_ACTIVE)
  IWL_ERR(priv, "removed non active STA %u\n", sta_id);

 priv->stations[sta_id].used &= ~IWL_STA_UCODE_ACTIVE;

 memset(&priv->stations[sta_id], 0, sizeof(struct iwl_station_entry));
 IWL_DEBUG_ASSOC(priv, "Removed STA %u\n", sta_id);
}
