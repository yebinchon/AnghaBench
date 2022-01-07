
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil_net_stats {int rx_mic_error; } ;
struct wil6210_priv {int dummy; } ;
struct TYPE_2__ {int status; int error; } ;
struct vring_rx_desc {TYPE_1__ dma; } ;
struct sk_buff {int dummy; } ;


 int EFAULT ;
 int RX_DMA_ERROR_MIC ;
 int RX_DMA_STATUS_ERROR ;
 int wil_dbg_txrx (struct wil6210_priv*,char*) ;
 struct vring_rx_desc* wil_skb_rxdesc (struct sk_buff*) ;

__attribute__((used)) static int wil_rx_error_check(struct wil6210_priv *wil, struct sk_buff *skb,
         struct wil_net_stats *stats)
{
 struct vring_rx_desc *d = wil_skb_rxdesc(skb);

 if ((d->dma.status & RX_DMA_STATUS_ERROR) &&
     (d->dma.error & RX_DMA_ERROR_MIC)) {
  stats->rx_mic_error++;
  wil_dbg_txrx(wil, "MIC error, dropping packet\n");
  return -EFAULT;
 }

 return 0;
}
