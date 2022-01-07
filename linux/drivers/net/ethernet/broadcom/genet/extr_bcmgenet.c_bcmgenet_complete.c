
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcmgenet_priv {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcmgenet_complete(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);


 clk_disable_unprepare(priv->clk);
}
