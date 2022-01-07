
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {scalar_t__ base; } ;
typedef int dma_addr_t ;


 int BITS_RX_FQ_START_ADDR_EN ;
 scalar_t__ RX_FQ_REG_EN ;
 scalar_t__ RX_FQ_START_ADDR ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_set_rx_fq(struct hix5hd2_priv *priv, dma_addr_t phy_addr)
{
 writel_relaxed(BITS_RX_FQ_START_ADDR_EN, priv->base + RX_FQ_REG_EN);
 writel_relaxed(phy_addr, priv->base + RX_FQ_START_ADDR);
 writel_relaxed(0, priv->base + RX_FQ_REG_EN);
}
