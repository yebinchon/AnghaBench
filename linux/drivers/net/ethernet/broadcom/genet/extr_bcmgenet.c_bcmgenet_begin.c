
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcmgenet_priv {int clk; } ;


 int clk_prepare_enable (int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcmgenet_begin(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);


 return clk_prepare_enable(priv->clk);
}
