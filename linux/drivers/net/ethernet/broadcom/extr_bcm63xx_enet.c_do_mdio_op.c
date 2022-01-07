
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_enet_priv {int dummy; } ;


 int ENET_IR_MII ;
 int ENET_IR_REG ;
 int ENET_MIIDATA_REG ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,unsigned int,int ) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int do_mdio_op(struct bcm_enet_priv *priv, unsigned int data)
{
 int limit;


 enet_writel(priv, ENET_IR_MII, ENET_IR_REG);

 enet_writel(priv, data, ENET_MIIDATA_REG);
 wmb();


 limit = 1000;
 do {
  if (enet_readl(priv, ENET_IR_REG) & ENET_IR_MII)
   break;
  udelay(1);
 } while (limit-- > 0);

 return (limit < 0) ? 1 : 0;
}
