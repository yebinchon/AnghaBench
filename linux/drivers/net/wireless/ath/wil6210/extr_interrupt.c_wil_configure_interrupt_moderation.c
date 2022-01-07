
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_priv {int tx_max_burst_duration; int tx_interframe_timeout; int rx_max_burst_duration; int rx_interframe_timeout; TYPE_1__* main_ndev; } ;
struct TYPE_2__ {struct wireless_dev* ieee80211_ptr; } ;


 int BIT_DMA_ITR_RX_CNT_CTL_CLR ;
 int BIT_DMA_ITR_RX_CNT_CTL_EN ;
 int BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL ;
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR ;
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_EN ;
 int BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL ;
 int BIT_DMA_ITR_TX_CNT_CTL_CLR ;
 int BIT_DMA_ITR_TX_CNT_CTL_EN ;
 int BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL ;
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR ;
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_EN ;
 int BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int RGF_DMA_ITR_RX_CNT_CTL ;
 int RGF_DMA_ITR_RX_CNT_TRSH ;
 int RGF_DMA_ITR_RX_IDL_CNT_CTL ;
 int RGF_DMA_ITR_RX_IDL_CNT_TRSH ;
 int RGF_DMA_ITR_TX_CNT_CTL ;
 int RGF_DMA_ITR_TX_CNT_TRSH ;
 int RGF_DMA_ITR_TX_IDL_CNT_CTL ;
 int RGF_DMA_ITR_TX_IDL_CNT_TRSH ;
 int wil_dbg_irq (struct wil6210_priv*,char*) ;
 int wil_info (struct wil6210_priv*,char*,int) ;
 int wil_w (struct wil6210_priv*,int ,int) ;

void wil_configure_interrupt_moderation(struct wil6210_priv *wil)
{
 struct wireless_dev *wdev = wil->main_ndev->ieee80211_ptr;

 wil_dbg_irq(wil, "configure_interrupt_moderation\n");




 if (wdev->iftype == NL80211_IFTYPE_MONITOR)
  return;


 wil_w(wil, RGF_DMA_ITR_TX_CNT_CTL, BIT_DMA_ITR_TX_CNT_CTL_CLR);
 wil_w(wil, RGF_DMA_ITR_TX_CNT_TRSH, wil->tx_max_burst_duration);
 wil_info(wil, "set ITR_TX_CNT_TRSH = %d usec\n",
   wil->tx_max_burst_duration);

 wil_w(wil, RGF_DMA_ITR_TX_CNT_CTL,
       BIT_DMA_ITR_TX_CNT_CTL_EN | BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL);


 wil_w(wil, RGF_DMA_ITR_TX_IDL_CNT_CTL, BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR);
 wil_w(wil, RGF_DMA_ITR_TX_IDL_CNT_TRSH, wil->tx_interframe_timeout);
 wil_info(wil, "set ITR_TX_IDL_CNT_TRSH = %d usec\n",
   wil->tx_interframe_timeout);

 wil_w(wil, RGF_DMA_ITR_TX_IDL_CNT_CTL, BIT_DMA_ITR_TX_IDL_CNT_CTL_EN |
       BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL);


 wil_w(wil, RGF_DMA_ITR_RX_CNT_CTL, BIT_DMA_ITR_RX_CNT_CTL_CLR);
 wil_w(wil, RGF_DMA_ITR_RX_CNT_TRSH, wil->rx_max_burst_duration);
 wil_info(wil, "set ITR_RX_CNT_TRSH = %d usec\n",
   wil->rx_max_burst_duration);

 wil_w(wil, RGF_DMA_ITR_RX_CNT_CTL,
       BIT_DMA_ITR_RX_CNT_CTL_EN | BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL);


 wil_w(wil, RGF_DMA_ITR_RX_IDL_CNT_CTL, BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR);
 wil_w(wil, RGF_DMA_ITR_RX_IDL_CNT_TRSH, wil->rx_interframe_timeout);
 wil_info(wil, "set ITR_RX_IDL_CNT_TRSH = %d usec\n",
   wil->rx_interframe_timeout);

 wil_w(wil, RGF_DMA_ITR_RX_IDL_CNT_CTL, BIT_DMA_ITR_RX_IDL_CNT_CTL_EN |
       BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL);
}
