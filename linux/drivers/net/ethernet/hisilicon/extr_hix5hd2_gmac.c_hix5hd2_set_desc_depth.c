
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_priv {scalar_t__ base; } ;


 int BITS_RX_BQ_DEPTH_EN ;
 int BITS_RX_FQ_DEPTH_EN ;
 int BITS_TX_BQ_DEPTH_EN ;
 int BITS_TX_RQ_DEPTH_EN ;
 scalar_t__ RX_BQ_DEPTH ;
 scalar_t__ RX_BQ_REG_EN ;
 scalar_t__ RX_FQ_DEPTH ;
 scalar_t__ RX_FQ_REG_EN ;
 scalar_t__ TX_BQ_DEPTH ;
 scalar_t__ TX_BQ_REG_EN ;
 scalar_t__ TX_RQ_DEPTH ;
 scalar_t__ TX_RQ_REG_EN ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hix5hd2_set_desc_depth(struct hix5hd2_priv *priv, int rx, int tx)
{
 writel_relaxed(BITS_RX_FQ_DEPTH_EN, priv->base + RX_FQ_REG_EN);
 writel_relaxed(rx << 3, priv->base + RX_FQ_DEPTH);
 writel_relaxed(0, priv->base + RX_FQ_REG_EN);

 writel_relaxed(BITS_RX_BQ_DEPTH_EN, priv->base + RX_BQ_REG_EN);
 writel_relaxed(rx << 3, priv->base + RX_BQ_DEPTH);
 writel_relaxed(0, priv->base + RX_BQ_REG_EN);

 writel_relaxed(BITS_TX_BQ_DEPTH_EN, priv->base + TX_BQ_REG_EN);
 writel_relaxed(tx << 3, priv->base + TX_BQ_DEPTH);
 writel_relaxed(0, priv->base + TX_BQ_REG_EN);

 writel_relaxed(BITS_TX_RQ_DEPTH_EN, priv->base + TX_RQ_REG_EN);
 writel_relaxed(tx << 3, priv->base + TX_RQ_DEPTH);
 writel_relaxed(0, priv->base + TX_RQ_REG_EN);
}
