
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4ican_priv {int clk; scalar_t__ base; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {int txerr; int rxerr; } ;


 scalar_t__ SUN4I_REG_ERRC_ADDR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int netdev_err (struct net_device const*,char*) ;
 struct sun4ican_priv* netdev_priv (struct net_device const*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int sun4ican_get_berr_counter(const struct net_device *dev,
         struct can_berr_counter *bec)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 u32 errors;
 int err;

 err = clk_prepare_enable(priv->clk);
 if (err) {
  netdev_err(dev, "could not enable clock\n");
  return err;
 }

 errors = readl(priv->base + SUN4I_REG_ERRC_ADDR);

 bec->txerr = errors & 0xFF;
 bec->rxerr = (errors >> 16) & 0xFF;

 clk_disable_unprepare(priv->clk);

 return 0;
}
