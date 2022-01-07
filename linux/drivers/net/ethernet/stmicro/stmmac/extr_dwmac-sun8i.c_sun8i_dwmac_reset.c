
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int device; scalar_t__ ioaddr; } ;


 int EFAULT ;
 scalar_t__ EMAC_BASIC_CTL1 ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun8i_dwmac_reset(struct stmmac_priv *priv)
{
 u32 v;
 int err;

 v = readl(priv->ioaddr + EMAC_BASIC_CTL1);
 writel(v | 0x01, priv->ioaddr + EMAC_BASIC_CTL1);




 err = readl_poll_timeout(priv->ioaddr + EMAC_BASIC_CTL1, v,
     !(v & 0x01), 100, 100000);

 if (err) {
  dev_err(priv->device, "EMAC reset timeout\n");
  return -EFAULT;
 }
 return 0;
}
