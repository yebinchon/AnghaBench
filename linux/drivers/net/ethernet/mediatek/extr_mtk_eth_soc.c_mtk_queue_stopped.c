
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int * netdev; } ;


 int MTK_MAC_COUNT ;
 scalar_t__ netif_queue_stopped (int ) ;

__attribute__((used)) static int mtk_queue_stopped(struct mtk_eth *eth)
{
 int i;

 for (i = 0; i < MTK_MAC_COUNT; i++) {
  if (!eth->netdev[i])
   continue;
  if (netif_queue_stopped(eth->netdev[i]))
   return 1;
 }

 return 0;
}
