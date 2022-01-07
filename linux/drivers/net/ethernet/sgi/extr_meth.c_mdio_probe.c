
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meth_private {int phy_addr; int meth_lock; } ;


 int DPRINTK (char*,...) ;
 int ENODEV ;




 unsigned long mdio_read (struct meth_private*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mdio_probe(struct meth_private *priv)
{
 int i;
 unsigned long p2, p3, flags;

 if(priv->phy_addr>=0&&priv->phy_addr<32)
  return 0;
 spin_lock_irqsave(&priv->meth_lock, flags);
 for (i=0;i<32;++i){
  priv->phy_addr=i;
  p2=mdio_read(priv,2);
  p3=mdio_read(priv,3);
  if(p2!=0xffff&&p2!=0x0000){
   DPRINTK("PHY code: %x\n",(p2<<12)|(p3>>4));
   break;
  }
 }
 spin_unlock_irqrestore(&priv->meth_lock, flags);
 if(priv->phy_addr<32) {
  return 0;
 }
 DPRINTK("Oopsie! PHY is not known!\n");
 priv->phy_addr=-1;
 return -ENODEV;
}
