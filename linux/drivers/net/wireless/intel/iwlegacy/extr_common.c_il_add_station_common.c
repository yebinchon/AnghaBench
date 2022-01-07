
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {int sta_lock; TYPE_2__* stations; } ;
struct il_addsta_cmd {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {size_t const* addr; } ;
struct TYPE_6__ {TYPE_1__ sta; } ;
struct TYPE_5__ {int used; TYPE_3__ sta; } ;


 int CMD_SYNC ;
 int D_ASSOC (char*,size_t,size_t const*) ;
 int D_INFO (char*,size_t) ;
 int EEXIST ;
 int EINVAL ;
 int IL_ERR (char*,size_t const*) ;
 size_t IL_INVALID_STATION ;
 int IL_STA_DRIVER_ACTIVE ;
 int IL_STA_UCODE_ACTIVE ;
 int IL_STA_UCODE_INPROGRESS ;
 size_t il_prep_station (struct il_priv*,size_t const*,int,struct ieee80211_sta*) ;
 int il_send_add_sta (struct il_priv*,struct il_addsta_cmd*,int ) ;
 int memcpy (struct il_addsta_cmd*,TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il_add_station_common(struct il_priv *il, const u8 *addr, bool is_ap,
        struct ieee80211_sta *sta, u8 *sta_id_r)
{
 unsigned long flags_spin;
 int ret = 0;
 u8 sta_id;
 struct il_addsta_cmd sta_cmd;

 *sta_id_r = 0;
 spin_lock_irqsave(&il->sta_lock, flags_spin);
 sta_id = il_prep_station(il, addr, is_ap, sta);
 if (sta_id == IL_INVALID_STATION) {
  IL_ERR("Unable to prepare station %pM for addition\n", addr);
  spin_unlock_irqrestore(&il->sta_lock, flags_spin);
  return -EINVAL;
 }






 if (il->stations[sta_id].used & IL_STA_UCODE_INPROGRESS) {
  D_INFO("STA %d already in process of being added.\n", sta_id);
  spin_unlock_irqrestore(&il->sta_lock, flags_spin);
  return -EEXIST;
 }

 if ((il->stations[sta_id].used & IL_STA_DRIVER_ACTIVE) &&
     (il->stations[sta_id].used & IL_STA_UCODE_ACTIVE)) {
  D_ASSOC("STA %d (%pM) already added, not adding again.\n",
   sta_id, addr);
  spin_unlock_irqrestore(&il->sta_lock, flags_spin);
  return -EEXIST;
 }

 il->stations[sta_id].used |= IL_STA_UCODE_INPROGRESS;
 memcpy(&sta_cmd, &il->stations[sta_id].sta,
        sizeof(struct il_addsta_cmd));
 spin_unlock_irqrestore(&il->sta_lock, flags_spin);


 ret = il_send_add_sta(il, &sta_cmd, CMD_SYNC);
 if (ret) {
  spin_lock_irqsave(&il->sta_lock, flags_spin);
  IL_ERR("Adding station %pM failed.\n",
         il->stations[sta_id].sta.sta.addr);
  il->stations[sta_id].used &= ~IL_STA_DRIVER_ACTIVE;
  il->stations[sta_id].used &= ~IL_STA_UCODE_INPROGRESS;
  spin_unlock_irqrestore(&il->sta_lock, flags_spin);
 }
 *sta_id_r = sta_id;
 return ret;
}
