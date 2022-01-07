
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {int clk; } ;


 int DIV_ROUND_UP (int ,int) ;
 int MAX_MDC_CLOCK ;
 int NB8800_TANGOX_MDIO_CLKDIV ;
 int NB8800_TANGOX_RESET ;
 int clk_get_rate (int ) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int) ;
 int nb8800_writew (struct nb8800_priv*,int ,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int usleep_range (int,int) ;
 int wmb () ;

__attribute__((used)) static int nb8800_tangox_reset(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 int clk_div;

 nb8800_writeb(priv, NB8800_TANGOX_RESET, 0);
 usleep_range(1000, 10000);
 nb8800_writeb(priv, NB8800_TANGOX_RESET, 1);

 wmb();

 clk_div = DIV_ROUND_UP(clk_get_rate(priv->clk), 2 * MAX_MDC_CLOCK);
 nb8800_writew(priv, NB8800_TANGOX_MDIO_CLKDIV, clk_div);

 return 0;
}
