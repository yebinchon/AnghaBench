
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {int sta_lock; TYPE_1__* stations; } ;
struct il_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct il_link_quality_cmd* lq; int used; } ;


 int EINVAL ;
 int ENOMEM ;
 int IL_ERR (char*) ;
 size_t IL_INVALID_STATION ;
 int IL_STA_BCAST ;
 int IL_STA_DRIVER_ACTIVE ;
 struct il_link_quality_cmd* il4965_sta_alloc_lq (struct il_priv*,size_t) ;
 int il_bcast_addr ;
 size_t il_prep_station (struct il_priv*,int ,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_alloc_bcast_station(struct il_priv *il)
{
 struct il_link_quality_cmd *link_cmd;
 unsigned long flags;
 u8 sta_id;

 spin_lock_irqsave(&il->sta_lock, flags);
 sta_id = il_prep_station(il, il_bcast_addr, 0, ((void*)0));
 if (sta_id == IL_INVALID_STATION) {
  IL_ERR("Unable to prepare broadcast station\n");
  spin_unlock_irqrestore(&il->sta_lock, flags);

  return -EINVAL;
 }

 il->stations[sta_id].used |= IL_STA_DRIVER_ACTIVE;
 il->stations[sta_id].used |= IL_STA_BCAST;
 spin_unlock_irqrestore(&il->sta_lock, flags);

 link_cmd = il4965_sta_alloc_lq(il, sta_id);
 if (!link_cmd) {
  IL_ERR
      ("Unable to initialize rate scaling for bcast station.\n");
  return -ENOMEM;
 }

 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].lq = link_cmd;
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return 0;
}
