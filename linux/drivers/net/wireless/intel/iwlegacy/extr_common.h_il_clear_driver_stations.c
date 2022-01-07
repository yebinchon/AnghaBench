
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int sta_lock; scalar_t__ ucode_key_table; scalar_t__ num_stations; int stations; } ;


 int memset (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
il_clear_driver_stations(struct il_priv *il)
{
 unsigned long flags;

 spin_lock_irqsave(&il->sta_lock, flags);
 memset(il->stations, 0, sizeof(il->stations));
 il->num_stations = 0;
 il->ucode_key_table = 0;
 spin_unlock_irqrestore(&il->sta_lock, flags);
}
