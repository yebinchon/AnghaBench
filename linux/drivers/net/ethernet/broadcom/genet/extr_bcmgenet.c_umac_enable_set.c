
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {int dummy; } ;


 int UMAC_CMD ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void umac_enable_set(struct bcmgenet_priv *priv, u32 mask, bool enable)
{
 u32 reg;

 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 if (enable)
  reg |= mask;
 else
  reg &= ~mask;
 bcmgenet_umac_writel(priv, reg, UMAC_CMD);




 if (enable == 0)
  usleep_range(1000, 2000);
}
