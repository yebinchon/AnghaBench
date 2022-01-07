
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ep93xx_priv {int dummy; } ;


 int REG_SELFCTL ;
 int REG_SELFCTL_RESET ;
 int msleep (int) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 int pr_crit (char*) ;
 int rdl (struct ep93xx_priv*,int ) ;
 int wrl (struct ep93xx_priv*,int ,int) ;

__attribute__((used)) static void ep93xx_stop_hw(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 int i;

 wrl(ep, REG_SELFCTL, REG_SELFCTL_RESET);
 for (i = 0; i < 10; i++) {
  if ((rdl(ep, REG_SELFCTL) & REG_SELFCTL_RESET) == 0)
   break;
  msleep(1);
 }

 if (i == 10)
  pr_crit("hw failed to reset\n");
}
