
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {scalar_t__ num_stations; int sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int used; int * lq; } ;


 int BUG_ON (int) ;
 int D_ASSOC (char*,size_t const,size_t const*) ;
 int D_INFO (char*,size_t const*) ;
 int EINVAL ;
 size_t const IL_INVALID_STATION ;
 int IL_STA_DRIVER_ACTIVE ;
 int IL_STA_LOCAL ;
 int IL_STA_UCODE_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int il_is_ready (struct il_priv*) ;
 int il_send_remove_station (struct il_priv*,size_t const*,size_t const,int) ;
 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il_remove_station(struct il_priv *il, const u8 sta_id, const u8 * addr)
{
 unsigned long flags;

 if (!il_is_ready(il)) {
  D_INFO("Unable to remove station %pM, device not ready.\n",
         addr);





  return 0;
 }

 D_ASSOC("Removing STA from driver:%d  %pM\n", sta_id, addr);

 if (WARN_ON(sta_id == IL_INVALID_STATION))
  return -EINVAL;

 spin_lock_irqsave(&il->sta_lock, flags);

 if (!(il->stations[sta_id].used & IL_STA_DRIVER_ACTIVE)) {
  D_INFO("Removing %pM but non DRIVER active\n", addr);
  goto out_err;
 }

 if (!(il->stations[sta_id].used & IL_STA_UCODE_ACTIVE)) {
  D_INFO("Removing %pM but non UCODE active\n", addr);
  goto out_err;
 }

 if (il->stations[sta_id].used & IL_STA_LOCAL) {
  kfree(il->stations[sta_id].lq);
  il->stations[sta_id].lq = ((void*)0);
 }

 il->stations[sta_id].used &= ~IL_STA_DRIVER_ACTIVE;

 il->num_stations--;

 BUG_ON(il->num_stations < 0);

 spin_unlock_irqrestore(&il->sta_lock, flags);

 return il_send_remove_station(il, addr, sta_id, 0);
out_err:
 spin_unlock_irqrestore(&il->sta_lock, flags);
 return -EINVAL;
}
