
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {scalar_t__ is_lite; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int IS_ENABLED (int ) ;
 int RBUF_4B_ALGN ;
 int RBUF_CONTROL ;
 int RBUF_RSB_EN ;
 int RBUF_RSB_SWAP0 ;
 int RBUF_RSB_SWAP1 ;
 int rbuf_readl (struct bcm_sysport_priv*,int ) ;
 int rbuf_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static void rbuf_init(struct bcm_sysport_priv *priv)
{
 u32 reg;

 reg = rbuf_readl(priv, RBUF_CONTROL);
 reg |= RBUF_4B_ALGN | RBUF_RSB_EN;

 if (priv->is_lite)
  reg &= ~RBUF_RSB_SWAP1;


 if (!IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  reg |= RBUF_RSB_SWAP0;
 else
  reg &= ~RBUF_RSB_SWAP0;
 rbuf_writel(priv, reg, RBUF_CONTROL);
}
