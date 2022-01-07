
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_eth {TYPE_2__** mac; } ;
struct TYPE_4__ {TYPE_1__* hw_stats; } ;
struct TYPE_3__ {int stats_lock; } ;


 int MTK_MAC_COUNT ;
 int mtk_stats_update_mac (TYPE_2__*) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mtk_stats_update(struct mtk_eth *eth)
{
 int i;

 for (i = 0; i < MTK_MAC_COUNT; i++) {
  if (!eth->mac[i] || !eth->mac[i]->hw_stats)
   continue;
  if (spin_trylock(&eth->mac[i]->hw_stats->stats_lock)) {
   mtk_stats_update_mac(eth->mac[i]);
   spin_unlock(&eth->mac[i]->hw_stats->stats_lock);
  }
 }
}
