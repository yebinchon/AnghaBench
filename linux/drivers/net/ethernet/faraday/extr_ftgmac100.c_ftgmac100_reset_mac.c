
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct net_device {int dummy; } ;
struct ftgmac100 {scalar_t__ base; struct net_device* netdev; } ;


 int EIO ;
 unsigned int FTGMAC100_MACCR_SW_RST ;
 scalar_t__ FTGMAC100_OFFSET_MACCR ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 int udelay (int) ;

__attribute__((used)) static int ftgmac100_reset_mac(struct ftgmac100 *priv, u32 maccr)
{
 struct net_device *netdev = priv->netdev;
 int i;


 iowrite32(maccr, priv->base + FTGMAC100_OFFSET_MACCR);
 iowrite32(maccr | FTGMAC100_MACCR_SW_RST,
    priv->base + FTGMAC100_OFFSET_MACCR);
 for (i = 0; i < 200; i++) {
  unsigned int maccr;

  maccr = ioread32(priv->base + FTGMAC100_OFFSET_MACCR);
  if (!(maccr & FTGMAC100_MACCR_SW_RST))
   return 0;

  udelay(1);
 }

 netdev_err(netdev, "Hardware reset failed\n");
 return -EIO;
}
