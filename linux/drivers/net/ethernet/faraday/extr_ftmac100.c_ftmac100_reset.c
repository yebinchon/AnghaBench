
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {scalar_t__ base; struct net_device* netdev; } ;


 int EIO ;
 unsigned int FTMAC100_MACCR_SW_RST ;
 scalar_t__ FTMAC100_OFFSET_MACCR ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 int udelay (int) ;

__attribute__((used)) static int ftmac100_reset(struct ftmac100 *priv)
{
 struct net_device *netdev = priv->netdev;
 int i;


 iowrite32(FTMAC100_MACCR_SW_RST, priv->base + FTMAC100_OFFSET_MACCR);

 for (i = 0; i < 5; i++) {
  unsigned int maccr;

  maccr = ioread32(priv->base + FTMAC100_OFFSET_MACCR);
  if (!(maccr & FTMAC100_MACCR_SW_RST)) {





   udelay(500);
   return 0;
  }

  udelay(1000);
 }

 netdev_err(netdev, "software reset failed\n");
 return -EIO;
}
