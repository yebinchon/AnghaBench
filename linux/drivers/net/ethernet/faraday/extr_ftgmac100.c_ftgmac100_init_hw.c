
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ftgmac100 {int rxdes_dma; int txdes_dma; int maht0; int maht1; scalar_t__ base; TYPE_1__* netdev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int FTGMAC100_APTC_RXPOLL_CNT (int) ;
 int FTGMAC100_DBLAC_RXBURST_SIZE (int) ;
 int FTGMAC100_DBLAC_RXDES_SIZE (int) ;
 int FTGMAC100_DBLAC_RXFIFO_HTHR (int) ;
 int FTGMAC100_DBLAC_RXFIFO_LTHR (int) ;
 int FTGMAC100_DBLAC_RX_THR_EN ;
 int FTGMAC100_DBLAC_TXBURST_SIZE (int) ;
 int FTGMAC100_DBLAC_TXDES_SIZE (int) ;
 int FTGMAC100_ITC_RXINT_THR (int) ;
 int FTGMAC100_ITC_TXINT_THR (int) ;
 scalar_t__ FTGMAC100_OFFSET_APTC ;
 scalar_t__ FTGMAC100_OFFSET_DBLAC ;
 scalar_t__ FTGMAC100_OFFSET_FEAR ;
 scalar_t__ FTGMAC100_OFFSET_ISR ;
 scalar_t__ FTGMAC100_OFFSET_ITC ;
 scalar_t__ FTGMAC100_OFFSET_MAHT0 ;
 scalar_t__ FTGMAC100_OFFSET_MAHT1 ;
 scalar_t__ FTGMAC100_OFFSET_NPTXR_BADR ;
 scalar_t__ FTGMAC100_OFFSET_RBSR ;
 scalar_t__ FTGMAC100_OFFSET_RXR_BADR ;
 scalar_t__ FTGMAC100_OFFSET_TPAFCR ;
 int FTGMAC100_RBSR_SIZE (int ) ;
 int RX_BUF_SIZE ;
 int ftgmac100_write_mac_addr (struct ftgmac100*,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ftgmac100_init_hw(struct ftgmac100 *priv)
{
 u32 reg, rfifo_sz, tfifo_sz;


 reg = ioread32(priv->base + FTGMAC100_OFFSET_ISR);
 iowrite32(reg, priv->base + FTGMAC100_OFFSET_ISR);


 iowrite32(priv->rxdes_dma, priv->base + FTGMAC100_OFFSET_RXR_BADR);


 iowrite32(priv->txdes_dma, priv->base + FTGMAC100_OFFSET_NPTXR_BADR);


 iowrite32(FTGMAC100_RBSR_SIZE(RX_BUF_SIZE),
    priv->base + FTGMAC100_OFFSET_RBSR);


 iowrite32(FTGMAC100_APTC_RXPOLL_CNT(1),
    priv->base + FTGMAC100_OFFSET_APTC);


 ftgmac100_write_mac_addr(priv, priv->netdev->dev_addr);


 iowrite32(priv->maht0, priv->base + FTGMAC100_OFFSET_MAHT0);
 iowrite32(priv->maht1, priv->base + FTGMAC100_OFFSET_MAHT1);






 iowrite32(FTGMAC100_DBLAC_RXDES_SIZE(2) |
    FTGMAC100_DBLAC_TXDES_SIZE(2) |
    FTGMAC100_DBLAC_RXBURST_SIZE(3) |
    FTGMAC100_DBLAC_TXBURST_SIZE(3) |
    FTGMAC100_DBLAC_RX_THR_EN |
    FTGMAC100_DBLAC_RXFIFO_HTHR(6) |
    FTGMAC100_DBLAC_RXFIFO_LTHR(2),
    priv->base + FTGMAC100_OFFSET_DBLAC);





 iowrite32(FTGMAC100_ITC_RXINT_THR(1) |
    FTGMAC100_ITC_TXINT_THR(1),
    priv->base + FTGMAC100_OFFSET_ITC);


 reg = ioread32(priv->base + FTGMAC100_OFFSET_FEAR);
 rfifo_sz = reg & 0x00000007;
 tfifo_sz = (reg >> 3) & 0x00000007;
 reg = ioread32(priv->base + FTGMAC100_OFFSET_TPAFCR);
 reg &= ~0x3f000000;
 reg |= (tfifo_sz << 27);
 reg |= (rfifo_sz << 24);
 iowrite32(reg, priv->base + FTGMAC100_OFFSET_TPAFCR);
}
