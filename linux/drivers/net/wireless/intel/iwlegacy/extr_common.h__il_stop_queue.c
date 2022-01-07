
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct il_priv {int hw; int * queue_stop_count; } ;


 scalar_t__ atomic_inc_return (int *) ;
 int ieee80211_stop_queue (int ,size_t) ;

__attribute__((used)) static inline void
_il_stop_queue(struct il_priv *il, u8 ac)
{
 if (atomic_inc_return(&il->queue_stop_count[ac]) > 0)
  ieee80211_stop_queue(il->hw, ac);
}
