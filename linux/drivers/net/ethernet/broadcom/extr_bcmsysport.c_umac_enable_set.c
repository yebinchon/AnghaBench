
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {int is_lite; } ;


 int GIB_CONTROL ;
 int UMAC_CMD ;
 int gib_readl (struct bcm_sysport_priv*,int ) ;
 int gib_writel (struct bcm_sysport_priv*,int ,int ) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void umac_enable_set(struct bcm_sysport_priv *priv,
       u32 mask, unsigned int enable)
{
 u32 reg;

 if (!priv->is_lite) {
  reg = umac_readl(priv, UMAC_CMD);
  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  umac_writel(priv, reg, UMAC_CMD);
 } else {
  reg = gib_readl(priv, GIB_CONTROL);
  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  gib_writel(priv, reg, GIB_CONTROL);
 }




 if (enable == 0)
  usleep_range(1000, 2000);
}
