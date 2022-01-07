
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;
struct nb8800_priv {int dummy; } ;


 int ETH_ALEN ;
 int NB8800_SRC_ADDR (int) ;
 int NB8800_UC_ADDR (int) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int ) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nb8800_update_mac_addr(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  nb8800_writeb(priv, NB8800_SRC_ADDR(i), dev->dev_addr[i]);

 for (i = 0; i < ETH_ALEN; i++)
  nb8800_writeb(priv, NB8800_UC_ADDR(i), dev->dev_addr[i]);
}
