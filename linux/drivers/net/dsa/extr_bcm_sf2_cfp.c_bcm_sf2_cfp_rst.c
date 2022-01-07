
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sf2_priv {int dummy; } ;


 int CORE_CFP_ACC ;
 int ETIMEDOUT ;
 int TCAM_RESET ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int ) ;
 int cpu_relax () ;

int bcm_sf2_cfp_rst(struct bcm_sf2_priv *priv)
{
 unsigned int timeout = 1000;
 u32 reg;

 reg = core_readl(priv, CORE_CFP_ACC);
 reg |= TCAM_RESET;
 core_writel(priv, reg, CORE_CFP_ACC);

 do {
  reg = core_readl(priv, CORE_CFP_ACC);
  if (!(reg & TCAM_RESET))
   break;

  cpu_relax();
 } while (timeout--);

 if (!timeout)
  return -ETIMEDOUT;

 return 0;
}
