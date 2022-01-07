
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; } ;


 int BIT_DMA_ITR_RX_CNT_CTL_EN ;
 int BIT_DMA_ITR_TX_CNT_CTL_EN ;
 int RGF_DMA_ITR_RX_CNT_CTL ;
 int RGF_DMA_ITR_RX_CNT_TRSH ;
 int RGF_DMA_ITR_TX_CNT_CTL ;
 int RGF_DMA_ITR_TX_CNT_TRSH ;
 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_pm_runtime_get (struct wil6210_priv*) ;
 int wil_pm_runtime_put (struct wil6210_priv*) ;
 int wil_r (struct wil6210_priv*,int ) ;

__attribute__((used)) static int wil_ethtoolops_get_coalesce(struct net_device *ndev,
           struct ethtool_coalesce *cp)
{
 struct wil6210_priv *wil = ndev_to_wil(ndev);
 u32 tx_itr_en, tx_itr_val = 0;
 u32 rx_itr_en, rx_itr_val = 0;
 int ret;

 wil_dbg_misc(wil, "ethtoolops_get_coalesce\n");

 ret = wil_pm_runtime_get(wil);
 if (ret < 0)
  return ret;

 tx_itr_en = wil_r(wil, RGF_DMA_ITR_TX_CNT_CTL);
 if (tx_itr_en & BIT_DMA_ITR_TX_CNT_CTL_EN)
  tx_itr_val = wil_r(wil, RGF_DMA_ITR_TX_CNT_TRSH);

 rx_itr_en = wil_r(wil, RGF_DMA_ITR_RX_CNT_CTL);
 if (rx_itr_en & BIT_DMA_ITR_RX_CNT_CTL_EN)
  rx_itr_val = wil_r(wil, RGF_DMA_ITR_RX_CNT_TRSH);

 wil_pm_runtime_put(wil);

 cp->tx_coalesce_usecs = tx_itr_val;
 cp->rx_coalesce_usecs = rx_itr_val;
 return 0;
}
