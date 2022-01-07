
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_extra_stats {int tx_payload_error; int tx_remote_fault; int tx_local_fault; int tx_ip_header_error; int tx_frame_flushed; int tx_jabber; } ;
struct xgmac_priv {int base; int dev; struct xgmac_extra_stats xstats; } ;
struct xgmac_dma_desc {int flags; } ;


 int TXDESC_ERROR_SUMMARY ;
 int TXDESC_FRAME_FLUSHED ;
 int TXDESC_IP_HEADER_ERR ;
 int TXDESC_JABBER_TIMEOUT ;
 int TXDESC_LOCAL_FAULT ;
 int TXDESC_PAYLOAD_CSUM_ERR ;
 int TXDESC_REMOTE_FAULT ;
 int TXDESC_UNDERFLOW_ERR ;
 int le32_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int) ;
 int xgmac_dma_flush_tx_fifo (int ) ;

__attribute__((used)) static int desc_get_tx_status(struct xgmac_priv *priv, struct xgmac_dma_desc *p)
{
 struct xgmac_extra_stats *x = &priv->xstats;
 u32 status = le32_to_cpu(p->flags);

 if (!(status & TXDESC_ERROR_SUMMARY))
  return 0;

 netdev_dbg(priv->dev, "tx desc error = 0x%08x\n", status);
 if (status & TXDESC_JABBER_TIMEOUT)
  x->tx_jabber++;
 if (status & TXDESC_FRAME_FLUSHED)
  x->tx_frame_flushed++;
 if (status & TXDESC_UNDERFLOW_ERR)
  xgmac_dma_flush_tx_fifo(priv->base);
 if (status & TXDESC_IP_HEADER_ERR)
  x->tx_ip_header_error++;
 if (status & TXDESC_LOCAL_FAULT)
  x->tx_local_fault++;
 if (status & TXDESC_REMOTE_FAULT)
  x->tx_remote_fault++;
 if (status & TXDESC_PAYLOAD_CSUM_ERR)
  x->tx_payload_error++;

 return -1;
}
