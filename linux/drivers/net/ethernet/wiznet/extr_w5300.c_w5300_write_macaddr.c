
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {struct net_device* ndev; } ;
struct net_device {int* dev_addr; } ;


 int W5300_SHARH ;
 int W5300_SHARL ;
 int w5300_write (struct w5300_priv*,int ,int) ;
 int w5300_write32 (struct w5300_priv*,int ,int) ;

__attribute__((used)) static void w5300_write_macaddr(struct w5300_priv *priv)
{
 struct net_device *ndev = priv->ndev;
 w5300_write32(priv, W5300_SHARL,
        ndev->dev_addr[0] << 24 |
        ndev->dev_addr[1] << 16 |
        ndev->dev_addr[2] << 8 |
        ndev->dev_addr[3]);
 w5300_write(priv, W5300_SHARH,
        ndev->dev_addr[4] << 8 |
        ndev->dev_addr[5]);
}
