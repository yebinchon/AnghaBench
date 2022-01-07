
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int * netdev; } ;


 int MTK_MAC_COUNT ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static void mtk_stop_queue(struct mtk_eth *eth)
{
 int i;

 for (i = 0; i < MTK_MAC_COUNT; i++) {
  if (!eth->netdev[i])
   continue;
  netif_stop_queue(eth->netdev[i]);
 }
}
