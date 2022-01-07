
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w5100_priv {TYPE_1__* ops; int promisc; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 int S0_CR_OPEN ;
 int S0_MR_MACRAW ;
 int S0_MR_MF ;
 int W5100_S0_MR (struct w5100_priv*) ;
 scalar_t__ W5500 ;
 int W5500_S0_MR_MF ;
 int w5100_command (struct w5100_priv*,int ) ;
 int w5100_enable_intr (struct w5100_priv*) ;
 int w5100_write (struct w5100_priv*,int ,int ) ;

__attribute__((used)) static void w5100_hw_start(struct w5100_priv *priv)
{
 u8 mode = S0_MR_MACRAW;

 if (!priv->promisc) {
  if (priv->ops->chip_id == W5500)
   mode |= W5500_S0_MR_MF;
  else
   mode |= S0_MR_MF;
 }

 w5100_write(priv, W5100_S0_MR(priv), mode);
 w5100_command(priv, S0_CR_OPEN);
 w5100_enable_intr(priv);
}
