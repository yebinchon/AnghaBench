
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipq806x_gmac {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int NSS_COMMON_CLK_DIV_SGMII_10 ;
 int NSS_COMMON_CLK_DIV_SGMII_100 ;
 int NSS_COMMON_CLK_DIV_SGMII_1000 ;



 int dev_err (struct device*,char*,unsigned int) ;

__attribute__((used)) static int get_clk_div_sgmii(struct ipq806x_gmac *gmac, unsigned int speed)
{
 struct device *dev = &gmac->pdev->dev;
 int div;

 switch (speed) {
 case 128:
  div = NSS_COMMON_CLK_DIV_SGMII_1000;
  break;

 case 129:
  div = NSS_COMMON_CLK_DIV_SGMII_100;
  break;

 case 130:
  div = NSS_COMMON_CLK_DIV_SGMII_10;
  break;

 default:
  dev_err(dev, "Speed %dMbps not supported in SGMII\n", speed);
  return -EINVAL;
 }

 return div;
}
