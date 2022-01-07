
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dwmac {int reg; } ;


 unsigned int ETHMAC_SPEED_100 ;


 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void meson6_dwmac_fix_mac_speed(void *priv, unsigned int speed)
{
 struct meson_dwmac *dwmac = priv;
 unsigned int val;

 val = readl(dwmac->reg);

 switch (speed) {
 case 129:
  val &= ~ETHMAC_SPEED_100;
  break;
 case 128:
  val |= ETHMAC_SPEED_100;
  break;
 }

 writel(val, dwmac->reg);
}
