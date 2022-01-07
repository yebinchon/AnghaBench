
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sf2_priv {int dummy; } ;


 int CORE_WATCHDOG_CTRL ;
 int EN_CHIP_RST ;
 int EN_SW_RESET ;
 int ETIMEDOUT ;
 int SOFTWARE_RESET ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bcm_sf2_sw_rst(struct bcm_sf2_priv *priv)
{
 unsigned int timeout = 1000;
 u32 reg;

 reg = core_readl(priv, CORE_WATCHDOG_CTRL);
 reg |= SOFTWARE_RESET | EN_CHIP_RST | EN_SW_RESET;
 core_writel(priv, reg, CORE_WATCHDOG_CTRL);

 do {
  reg = core_readl(priv, CORE_WATCHDOG_CTRL);
  if (!(reg & SOFTWARE_RESET))
   break;

  usleep_range(1000, 2000);
 } while (timeout-- > 0);

 if (timeout == 0)
  return -ETIMEDOUT;

 return 0;
}
