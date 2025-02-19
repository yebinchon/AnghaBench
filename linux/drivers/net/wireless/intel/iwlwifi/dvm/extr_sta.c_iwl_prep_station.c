
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_station_priv {struct iwl_rxon_context* ctx; } ;
struct TYPE_3__ {size_t sta_id; int addr; } ;
struct TYPE_4__ {int station_flags; TYPE_1__ sta; scalar_t__ mode; } ;
struct iwl_station_entry {int used; int ctxid; TYPE_2__ sta; } ;
struct iwl_rxon_context {size_t ap_sta_id; size_t bcast_sta_id; int ctxid; int station_flags; } ;
struct iwl_priv {int num_stations; struct iwl_station_entry* stations; } ;
struct iwl_addsta_cmd {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 int ETH_ALEN ;
 int IWLAGN_STATION_COUNT ;
 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,size_t,size_t const*) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,size_t) ;
 size_t IWL_INVALID_STATION ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_ID ;
 int IWL_STA_UCODE_ACTIVE ;
 int IWL_STA_UCODE_INPROGRESS ;
 scalar_t__ ether_addr_equal (int ,size_t const*) ;
 scalar_t__ is_broadcast_ether_addr (size_t const*) ;
 int iwl_set_ht_add_station (struct iwl_priv*,size_t,struct ieee80211_sta*,struct iwl_rxon_context*) ;
 int memcpy (int ,size_t const*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ unlikely (int) ;

u8 iwl_prep_station(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
      const u8 *addr, bool is_ap, struct ieee80211_sta *sta)
{
 struct iwl_station_entry *station;
 int i;
 u8 sta_id = IWL_INVALID_STATION;

 if (is_ap)
  sta_id = ctx->ap_sta_id;
 else if (is_broadcast_ether_addr(addr))
  sta_id = ctx->bcast_sta_id;
 else
  for (i = IWL_STA_ID; i < IWLAGN_STATION_COUNT; i++) {
   if (ether_addr_equal(priv->stations[i].sta.sta.addr,
          addr)) {
    sta_id = i;
    break;
   }

   if (!priv->stations[i].used &&
       sta_id == IWL_INVALID_STATION)
    sta_id = i;
  }





 if (unlikely(sta_id == IWL_INVALID_STATION))
  return sta_id;






 if (priv->stations[sta_id].used & IWL_STA_UCODE_INPROGRESS) {
  IWL_DEBUG_INFO(priv, "STA %d already in process of being "
          "added.\n", sta_id);
  return sta_id;
 }

 if ((priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE) &&
     (priv->stations[sta_id].used & IWL_STA_UCODE_ACTIVE) &&
     ether_addr_equal(priv->stations[sta_id].sta.sta.addr, addr)) {
  IWL_DEBUG_ASSOC(priv, "STA %d (%pM) already added, not "
    "adding again.\n", sta_id, addr);
  return sta_id;
 }

 station = &priv->stations[sta_id];
 station->used = IWL_STA_DRIVER_ACTIVE;
 IWL_DEBUG_ASSOC(priv, "Add STA to driver ID %d: %pM\n",
   sta_id, addr);
 priv->num_stations++;


 memset(&station->sta, 0, sizeof(struct iwl_addsta_cmd));
 memcpy(station->sta.sta.addr, addr, ETH_ALEN);
 station->sta.mode = 0;
 station->sta.sta.sta_id = sta_id;
 station->sta.station_flags = ctx->station_flags;
 station->ctxid = ctx->ctxid;

 if (sta) {
  struct iwl_station_priv *sta_priv;

  sta_priv = (void *)sta->drv_priv;
  sta_priv->ctx = ctx;
 }






 iwl_set_ht_add_station(priv, sta_id, sta, ctx);

 return sta_id;

}
