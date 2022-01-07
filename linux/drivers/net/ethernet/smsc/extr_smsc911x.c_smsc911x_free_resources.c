
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int * clk; int supplies; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int *) ;
 int clk_put (int *) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_free (int ,int ) ;

__attribute__((used)) static void smsc911x_free_resources(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct smsc911x_data *pdata = netdev_priv(ndev);


 regulator_bulk_free(ARRAY_SIZE(pdata->supplies),
   pdata->supplies);


 if (!IS_ERR(pdata->clk)) {
  clk_put(pdata->clk);
  pdata->clk = ((void*)0);
 }
}
