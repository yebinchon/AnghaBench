
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_mac {int phylink; } ;
struct mtk_eth {int rx_napi; int tx_napi; int * netdev; } ;


 int MTK_MAC_COUNT ;
 int mtk_cleanup (struct mtk_eth*) ;
 int mtk_hw_deinit (struct mtk_eth*) ;
 int mtk_mdio_cleanup (struct mtk_eth*) ;
 int mtk_stop (int ) ;
 struct mtk_mac* netdev_priv (int ) ;
 int netif_napi_del (int *) ;
 int phylink_disconnect_phy (int ) ;
 struct mtk_eth* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_remove(struct platform_device *pdev)
{
 struct mtk_eth *eth = platform_get_drvdata(pdev);
 struct mtk_mac *mac;
 int i;


 for (i = 0; i < MTK_MAC_COUNT; i++) {
  if (!eth->netdev[i])
   continue;
  mtk_stop(eth->netdev[i]);
  mac = netdev_priv(eth->netdev[i]);
  phylink_disconnect_phy(mac->phylink);
 }

 mtk_hw_deinit(eth);

 netif_napi_del(&eth->tx_napi);
 netif_napi_del(&eth->rx_napi);
 mtk_cleanup(eth);
 mtk_mdio_cleanup(eth);

 return 0;
}
