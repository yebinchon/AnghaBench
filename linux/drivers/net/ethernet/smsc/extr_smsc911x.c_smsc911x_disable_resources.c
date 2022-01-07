
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int clk; int supplies; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int smsc911x_disable_resources(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct smsc911x_data *pdata = netdev_priv(ndev);
 int ret = 0;

 ret = regulator_bulk_disable(ARRAY_SIZE(pdata->supplies),
   pdata->supplies);

 if (!IS_ERR(pdata->clk))
  clk_disable_unprepare(pdata->clk);

 return ret;
}
