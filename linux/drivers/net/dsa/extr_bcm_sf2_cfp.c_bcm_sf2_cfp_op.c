
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct bcm_sf2_priv {int dummy; } ;


 int CORE_CFP_ACC ;
 int ETIMEDOUT ;
 unsigned int OP_SEL_MASK ;
 unsigned int OP_STR_DONE ;
 unsigned int RAM_SEL_MASK ;
 unsigned int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,unsigned int,int ) ;
 int cpu_relax () ;

__attribute__((used)) static int bcm_sf2_cfp_op(struct bcm_sf2_priv *priv, unsigned int op)
{
 unsigned int timeout = 1000;
 u32 reg;

 reg = core_readl(priv, CORE_CFP_ACC);
 reg &= ~(OP_SEL_MASK | RAM_SEL_MASK);
 reg |= OP_STR_DONE | op;
 core_writel(priv, reg, CORE_CFP_ACC);

 do {
  reg = core_readl(priv, CORE_CFP_ACC);
  if (!(reg & OP_STR_DONE))
   break;

  cpu_relax();
 } while (timeout--);

 if (!timeout)
  return -ETIMEDOUT;

 return 0;
}
