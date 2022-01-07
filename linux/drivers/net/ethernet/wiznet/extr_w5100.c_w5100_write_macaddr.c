
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {struct net_device* ndev; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int W5100_SHAR ;
 int w5100_writebulk (struct w5100_priv*,int ,int ,int ) ;

__attribute__((used)) static void w5100_write_macaddr(struct w5100_priv *priv)
{
 struct net_device *ndev = priv->ndev;

 w5100_writebulk(priv, W5100_SHAR, ndev->dev_addr, ETH_ALEN);
}
