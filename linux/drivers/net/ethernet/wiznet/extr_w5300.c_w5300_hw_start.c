
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {scalar_t__ promisc; } ;


 int IR_S0 ;
 int S0_CR_OPEN ;
 int S0_IR_RECV ;
 int S0_IR_SENDOK ;
 int S0_MR_MACRAW ;
 int S0_MR_MACRAW_MF ;
 int W5300_IMR ;
 int W5300_S0_IMR ;
 int W5300_S0_MR ;
 int w5300_command (struct w5300_priv*,int ) ;
 int w5300_write (struct w5300_priv*,int ,int) ;

__attribute__((used)) static void w5300_hw_start(struct w5300_priv *priv)
{
 w5300_write(priv, W5300_S0_MR, priv->promisc ?
     S0_MR_MACRAW : S0_MR_MACRAW_MF);
 w5300_command(priv, S0_CR_OPEN);
 w5300_write(priv, W5300_S0_IMR, S0_IR_RECV | S0_IR_SENDOK);
 w5300_write(priv, W5300_IMR, IR_S0);
}
