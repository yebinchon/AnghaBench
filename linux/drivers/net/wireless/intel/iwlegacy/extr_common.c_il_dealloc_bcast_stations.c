
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_stations; } ;
struct il_priv {scalar_t__ num_stations; int sta_lock; TYPE_2__* stations; TYPE_1__ hw_params; } ;
struct TYPE_4__ {int used; int * lq; } ;


 int BUG_ON (int) ;
 int IL_STA_BCAST ;
 int IL_STA_UCODE_ACTIVE ;
 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_dealloc_bcast_stations(struct il_priv *il)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&il->sta_lock, flags);
 for (i = 0; i < il->hw_params.max_stations; i++) {
  if (!(il->stations[i].used & IL_STA_BCAST))
   continue;

  il->stations[i].used &= ~IL_STA_UCODE_ACTIVE;
  il->num_stations--;
  BUG_ON(il->num_stations < 0);
  kfree(il->stations[i].lq);
  il->stations[i].lq = ((void*)0);
 }
 spin_unlock_irqrestore(&il->sta_lock, flags);
}
