
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smsc911x_data {int clk; int reset_gpiod; TYPE_1__* supplies; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {char* supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EPROBE_DEFER ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_get (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int smsc911x_request_resources(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct smsc911x_data *pdata = netdev_priv(ndev);
 int ret = 0;


 pdata->supplies[0].supply = "vdd33a";
 pdata->supplies[1].supply = "vddvario";
 ret = regulator_bulk_get(&pdev->dev,
   ARRAY_SIZE(pdata->supplies),
   pdata->supplies);
 if (ret) {




  if (ret == -EPROBE_DEFER)
   return ret;
  netdev_err(ndev, "couldn't get regulators %d\n",
    ret);
 }


 pdata->reset_gpiod = devm_gpiod_get_optional(&pdev->dev,
           "reset",
           GPIOD_OUT_LOW);


 pdata->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pdata->clk))
  dev_dbg(&pdev->dev, "couldn't get clock %li\n",
   PTR_ERR(pdata->clk));

 return ret;
}
