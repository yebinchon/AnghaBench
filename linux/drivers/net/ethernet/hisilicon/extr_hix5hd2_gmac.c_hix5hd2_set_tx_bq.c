
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {scalar_t__ base; } ;
typedef int dma_addr_t ;


 int BITS_TX_BQ_START_ADDR_EN ;
 scalar_t__ TX_BQ_REG_EN ;
 scalar_t__ TX_BQ_START_ADDR ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_set_tx_bq(struct hix5hd2_priv *priv, dma_addr_t phy_addr)
{
 writel_relaxed(BITS_TX_BQ_START_ADDR_EN, priv->base + TX_BQ_REG_EN);
 writel_relaxed(phy_addr, priv->base + TX_BQ_START_ADDR);
 writel_relaxed(0, priv->base + TX_BQ_REG_EN);
}
