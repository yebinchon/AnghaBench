
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mcp251x_priv {int clk; int power; struct net_device* net; } ;


 int clk_disable_unprepare (int ) ;
 int free_candev (struct net_device*) ;
 int mcp251x_power_enable (int ,int ) ;
 struct mcp251x_priv* spi_get_drvdata (struct spi_device*) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int mcp251x_can_remove(struct spi_device *spi)
{
 struct mcp251x_priv *priv = spi_get_drvdata(spi);
 struct net_device *net = priv->net;

 unregister_candev(net);

 mcp251x_power_enable(priv->power, 0);

 clk_disable_unprepare(priv->clk);

 free_candev(net);

 return 0;
}
