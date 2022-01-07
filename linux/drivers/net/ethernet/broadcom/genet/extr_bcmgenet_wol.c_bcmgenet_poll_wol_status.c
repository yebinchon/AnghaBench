
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcmgenet_priv {struct net_device* dev; } ;


 int ETIMEDOUT ;
 int RBUF_STATUS ;
 int RBUF_STATUS_WOL ;
 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int ) ;
 int mdelay (int) ;
 int netdev_crit (struct net_device*,char*) ;

__attribute__((used)) static int bcmgenet_poll_wol_status(struct bcmgenet_priv *priv)
{
 struct net_device *dev = priv->dev;
 int retries = 0;

 while (!(bcmgenet_rbuf_readl(priv, RBUF_STATUS)
  & RBUF_STATUS_WOL)) {
  retries++;
  if (retries > 5) {
   netdev_crit(dev, "polling wol mode timeout\n");
   return -ETIMEDOUT;
  }
  mdelay(1);
 }

 return retries;
}
