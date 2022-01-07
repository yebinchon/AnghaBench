
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_tse_private {int rx_dma_resp; int rx_dma_csr; } ;


 int bytes_transferred ;
 int csrrd32 (int ,int ) ;
 int msgdma_csroffs (int ) ;
 int msgdma_respoffs (int ) ;
 int resp_fill_level ;
 int status ;

u32 msgdma_rx_status(struct altera_tse_private *priv)
{
 u32 rxstatus = 0;
 u32 pktlength;
 u32 pktstatus;

 if (csrrd32(priv->rx_dma_csr, msgdma_csroffs(resp_fill_level))
     & 0xffff) {
  pktlength = csrrd32(priv->rx_dma_resp,
        msgdma_respoffs(bytes_transferred));
  pktstatus = csrrd32(priv->rx_dma_resp,
        msgdma_respoffs(status));
  rxstatus = pktstatus;
  rxstatus = rxstatus << 16;
  rxstatus |= (pktlength & 0xffff);
 }
 return rxstatus;
}
