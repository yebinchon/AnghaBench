
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_priv {scalar_t__ base; } ;


 int BITS_RX_EN ;
 int BITS_TX_EN ;
 scalar_t__ DESC_WR_RD_ENA ;
 scalar_t__ PORT_EN ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_port_disable(struct hix5hd2_priv *priv)
{
 writel_relaxed(~(u32)(BITS_RX_EN | BITS_TX_EN), priv->base + PORT_EN);
 writel_relaxed(0, priv->base + DESC_WR_RD_ENA);
}
