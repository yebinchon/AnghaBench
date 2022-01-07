
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct nb8800_priv {int rx_itr_irq; int rx_itr_poll; int rx_dma_config; int pause_aneg; int pause_rx; int pause_tx; int clk; } ;


 int DESC_BTS (int) ;
 int DESC_DS ;
 int DESC_EOF ;
 int NB8800_PE_THRESHOLD ;
 int NB8800_PF_THRESHOLD ;
 int NB8800_PQ1 ;
 int NB8800_PQ2 ;
 int NB8800_RANDOM_SEED ;
 int NB8800_RXC_CR ;
 int NB8800_RX_CTL ;
 int NB8800_RX_ITR ;
 int NB8800_TXC_CR ;
 int NB8800_TX_BUFSIZE ;
 int NB8800_TX_CTL1 ;
 int NB8800_TX_CTL2 ;
 int NB8800_TX_ITR ;
 int NB8800_TX_SDP ;
 int RCR_BTS (int) ;
 int RCR_DIE ;
 int RCR_DM ;
 int RCR_LE ;
 int RCR_RFI (int) ;
 int RCR_RS ;
 int RX_AF_EN ;
 int RX_BUF_SIZE ;
 int RX_PAD_STRIP ;
 int TCR_BTS (int) ;
 int TCR_DIE ;
 int TCR_DM ;
 int TCR_LE ;
 int TCR_RS ;
 int TCR_TFI (int) ;
 int TX_APPEND_FCS ;
 int TX_PAD_EN ;
 int TX_RETRY_EN ;
 int clk_get_rate (int ) ;
 int nb8800_mc_init (struct net_device*,int ) ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int) ;
 int nb8800_writel (struct nb8800_priv*,int ,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nb8800_hw_init(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 u32 val;

 val = TX_RETRY_EN | TX_PAD_EN | TX_APPEND_FCS;
 nb8800_writeb(priv, NB8800_TX_CTL1, val);


 nb8800_writeb(priv, NB8800_TX_CTL2, 5);

 val = RX_PAD_STRIP | RX_AF_EN;
 nb8800_writeb(priv, NB8800_RX_CTL, val);


 nb8800_writeb(priv, NB8800_RANDOM_SEED, 4);


 nb8800_writeb(priv, NB8800_TX_SDP, 12);






 nb8800_writeb(priv, NB8800_PE_THRESHOLD, 0);


 nb8800_writeb(priv, NB8800_PF_THRESHOLD, 255);


 nb8800_writeb(priv, NB8800_TX_BUFSIZE, 64);



 val = nb8800_readl(priv, NB8800_TXC_CR);
 val &= TCR_LE;
 val |= TCR_DM;
 val |= TCR_RS;
 val |= TCR_DIE;
 val |= TCR_TFI(7);
 val |= TCR_BTS(2);
 nb8800_writel(priv, NB8800_TXC_CR, val);


 val = clk_get_rate(priv->clk) / 100;
 nb8800_writel(priv, NB8800_TX_ITR, val);



 val = nb8800_readl(priv, NB8800_RXC_CR);
 val &= RCR_LE;
 val |= RCR_DM;
 val |= RCR_RS;
 val |= RCR_DIE;
 val |= RCR_RFI(7);
 val |= RCR_BTS(2);
 nb8800_writel(priv, NB8800_RXC_CR, val);




 priv->rx_itr_irq = clk_get_rate(priv->clk) / 20000;




 priv->rx_itr_poll = clk_get_rate(priv->clk) / 100;

 nb8800_writel(priv, NB8800_RX_ITR, priv->rx_itr_irq);

 priv->rx_dma_config = RX_BUF_SIZE | DESC_BTS(2) | DESC_DS | DESC_EOF;




 val = 100000 / 512;
 nb8800_writeb(priv, NB8800_PQ1, val >> 8);
 nb8800_writeb(priv, NB8800_PQ2, val & 0xff);


 priv->pause_aneg = 1;
 priv->pause_rx = 1;
 priv->pause_tx = 1;

 nb8800_mc_init(dev, 0);

 return 0;
}
