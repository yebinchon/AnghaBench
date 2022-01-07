
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int desc_rxchk_en; scalar_t__ crc_fwd_en; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int RBUF_CHK_CTRL ;
 int RBUF_RXCHK_EN ;
 int RBUF_SKIP_FCS ;
 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int ,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcmgenet_set_rx_csum(struct net_device *dev,
    netdev_features_t wanted)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 rbuf_chk_ctrl;
 bool rx_csum_en;

 rx_csum_en = !!(wanted & NETIF_F_RXCSUM);

 rbuf_chk_ctrl = bcmgenet_rbuf_readl(priv, RBUF_CHK_CTRL);


 if (rx_csum_en)
  rbuf_chk_ctrl |= RBUF_RXCHK_EN;
 else
  rbuf_chk_ctrl &= ~RBUF_RXCHK_EN;
 priv->desc_rxchk_en = rx_csum_en;




 if (rx_csum_en && priv->crc_fwd_en)
  rbuf_chk_ctrl |= RBUF_SKIP_FCS;
 else
  rbuf_chk_ctrl &= ~RBUF_SKIP_FCS;

 bcmgenet_rbuf_writel(priv, rbuf_chk_ctrl, RBUF_CHK_CTRL);

 return 0;
}
