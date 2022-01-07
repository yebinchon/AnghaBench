
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_priv {scalar_t__ num_stations; int sta_lock; TYPE_1__* stations; int ** tid_data; } ;
struct TYPE_2__ {int used; } ;


 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,size_t const*,size_t const) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,size_t const*) ;
 size_t const IWL_INVALID_STATION ;
 size_t IWL_MAX_TID_COUNT ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_UCODE_INPROGRESS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_is_ready (struct iwl_priv*) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_deactivate_station(struct iwl_priv *priv, const u8 sta_id,
       const u8 *addr)
{
 u8 tid;

 if (!iwl_is_ready(priv)) {
  IWL_DEBUG_INFO(priv,
   "Unable to remove station %pM, device not ready.\n",
   addr);
  return;
 }

 IWL_DEBUG_ASSOC(priv, "Deactivating STA: %pM (%d)\n", addr, sta_id);

 if (WARN_ON_ONCE(sta_id == IWL_INVALID_STATION))
  return;

 spin_lock_bh(&priv->sta_lock);

 WARN_ON_ONCE(!(priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE));

 for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++)
  memset(&priv->tid_data[sta_id][tid], 0,
   sizeof(priv->tid_data[sta_id][tid]));

 priv->stations[sta_id].used &= ~IWL_STA_DRIVER_ACTIVE;
 priv->stations[sta_id].used &= ~IWL_STA_UCODE_INPROGRESS;

 priv->num_stations--;

 if (WARN_ON_ONCE(priv->num_stations < 0))
  priv->num_stations = 0;

 spin_unlock_bh(&priv->sta_lock);
}
