
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct clk {int dummy; } ;


 long DIV_ROUND_UP (long,long) ;



 long abs (long) ;
 long clk_round_rate (struct clk*,long) ;
 scalar_t__ clk_set_rate (struct clk*,long) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*,long) ;

__attribute__((used)) static void macb_set_tx_clk(struct clk *clk, int speed, struct net_device *dev)
{
 long ferr, rate, rate_rounded;

 if (!clk)
  return;

 switch (speed) {
 case 130:
  rate = 2500000;
  break;
 case 129:
  rate = 25000000;
  break;
 case 128:
  rate = 125000000;
  break;
 default:
  return;
 }

 rate_rounded = clk_round_rate(clk, rate);
 if (rate_rounded < 0)
  return;




 ferr = abs(rate_rounded - rate);
 ferr = DIV_ROUND_UP(ferr, rate / 100000);
 if (ferr > 5)
  netdev_warn(dev, "unable to generate target frequency: %ld Hz\n",
       rate);

 if (clk_set_rate(clk, rate_rounded))
  netdev_err(dev, "adjusting tx_clk failed.\n");
}
