
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_priv {TYPE_3__* stations; int sta_lock; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ sta; } ;
struct TYPE_6__ {int used; TYPE_2__ sta; } ;


 int EINVAL ;
 size_t IWLAGN_STATION_COUNT ;
 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,size_t,int ) ;
 int IWL_ERR (struct iwl_priv*,char*,size_t,...) ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_UCODE_ACTIVE ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_sta_ucode_activate(struct iwl_priv *priv, u8 sta_id)
{
 lockdep_assert_held(&priv->sta_lock);

 if (sta_id >= IWLAGN_STATION_COUNT) {
  IWL_ERR(priv, "invalid sta_id %u\n", sta_id);
  return -EINVAL;
 }
 if (!(priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE))
  IWL_ERR(priv, "ACTIVATE a non DRIVER active station id %u "
   "addr %pM\n",
   sta_id, priv->stations[sta_id].sta.sta.addr);

 if (priv->stations[sta_id].used & IWL_STA_UCODE_ACTIVE) {
  IWL_DEBUG_ASSOC(priv,
    "STA id %u addr %pM already present in uCode "
    "(according to driver)\n",
    sta_id, priv->stations[sta_id].sta.sta.addr);
 } else {
  priv->stations[sta_id].used |= IWL_STA_UCODE_ACTIVE;
  IWL_DEBUG_ASSOC(priv, "Added STA id %u addr %pM to uCode\n",
    sta_id, priv->stations[sta_id].sta.sta.addr);
 }
 return 0;
}
