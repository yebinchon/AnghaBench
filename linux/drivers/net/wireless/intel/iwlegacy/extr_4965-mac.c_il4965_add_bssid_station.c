
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {int sta_lock; TYPE_1__* stations; } ;
struct il_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct il_link_quality_cmd* lq; int used; } ;


 int CMD_SYNC ;
 int ENOMEM ;
 int IL_ERR (char*,...) ;
 size_t IL_INVALID_STATION ;
 int IL_STA_LOCAL ;
 struct il_link_quality_cmd* il4965_sta_alloc_lq (struct il_priv*,size_t) ;
 int il_add_station_common (struct il_priv*,size_t const*,int ,int *,size_t*) ;
 int il_send_lq_cmd (struct il_priv*,struct il_link_quality_cmd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_add_bssid_station(struct il_priv *il, const u8 *addr, u8 *sta_id_r)
{
 int ret;
 u8 sta_id;
 struct il_link_quality_cmd *link_cmd;
 unsigned long flags;

 if (sta_id_r)
  *sta_id_r = IL_INVALID_STATION;

 ret = il_add_station_common(il, addr, 0, ((void*)0), &sta_id);
 if (ret) {
  IL_ERR("Unable to add station %pM\n", addr);
  return ret;
 }

 if (sta_id_r)
  *sta_id_r = sta_id;

 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].used |= IL_STA_LOCAL;
 spin_unlock_irqrestore(&il->sta_lock, flags);


 link_cmd = il4965_sta_alloc_lq(il, sta_id);
 if (!link_cmd) {
  IL_ERR("Unable to initialize rate scaling for station %pM.\n",
         addr);
  return -ENOMEM;
 }

 ret = il_send_lq_cmd(il, link_cmd, CMD_SYNC, 1);
 if (ret)
  IL_ERR("Link quality command failed (%d)\n", ret);

 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].lq = link_cmd;
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return 0;
}
