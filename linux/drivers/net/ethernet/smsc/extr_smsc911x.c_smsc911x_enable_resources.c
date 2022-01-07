
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int clk; int supplies; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int smsc911x_enable_resources(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct smsc911x_data *pdata = netdev_priv(ndev);
 int ret = 0;

 ret = regulator_bulk_enable(ARRAY_SIZE(pdata->supplies),
   pdata->supplies);
 if (ret)
  netdev_err(ndev, "failed to enable regulators %d\n",
    ret);

 if (!IS_ERR(pdata->clk)) {
  ret = clk_prepare_enable(pdata->clk);
  if (ret < 0)
   netdev_err(ndev, "failed to enable clock %d\n", ret);
 }

 return ret;
}
