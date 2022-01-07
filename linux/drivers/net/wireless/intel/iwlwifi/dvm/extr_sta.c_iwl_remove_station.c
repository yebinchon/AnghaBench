
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_priv {scalar_t__ num_stations; int sta_lock; TYPE_1__* stations; int ** tid_data; } ;
struct TYPE_2__ {int used; int * lq; } ;


 int EINVAL ;
 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,size_t const,size_t const*) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,size_t const*) ;
 size_t const IWL_INVALID_STATION ;
 size_t IWL_MAX_TID_COUNT ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_LOCAL ;
 int IWL_STA_UCODE_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int iwl_is_ready (struct iwl_priv*) ;
 int iwl_send_remove_station (struct iwl_priv*,size_t const*,size_t const,int) ;
 int kfree (int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_remove_station(struct iwl_priv *priv, const u8 sta_id,
         const u8 *addr)
{
 u8 tid;

 if (!iwl_is_ready(priv)) {
  IWL_DEBUG_INFO(priv,
   "Unable to remove station %pM, device not ready.\n",
   addr);





  return 0;
 }

 IWL_DEBUG_ASSOC(priv, "Removing STA from driver:%d  %pM\n",
   sta_id, addr);

 if (WARN_ON(sta_id == IWL_INVALID_STATION))
  return -EINVAL;

 spin_lock_bh(&priv->sta_lock);

 if (!(priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE)) {
  IWL_DEBUG_INFO(priv, "Removing %pM but non DRIVER active\n",
    addr);
  goto out_err;
 }

 if (!(priv->stations[sta_id].used & IWL_STA_UCODE_ACTIVE)) {
  IWL_DEBUG_INFO(priv, "Removing %pM but non UCODE active\n",
    addr);
  goto out_err;
 }

 if (priv->stations[sta_id].used & IWL_STA_LOCAL) {
  kfree(priv->stations[sta_id].lq);
  priv->stations[sta_id].lq = ((void*)0);
 }

 for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++)
  memset(&priv->tid_data[sta_id][tid], 0,
   sizeof(priv->tid_data[sta_id][tid]));

 priv->stations[sta_id].used &= ~IWL_STA_DRIVER_ACTIVE;

 priv->num_stations--;

 if (WARN_ON(priv->num_stations < 0))
  priv->num_stations = 0;

 spin_unlock_bh(&priv->sta_lock);

 return iwl_send_remove_station(priv, addr, sta_id, 0);
out_err:
 spin_unlock_bh(&priv->sta_lock);
 return -EINVAL;
}
