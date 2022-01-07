
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dev_state; int dev_workqueue; int an_workqueue; int sysclk; int ptpclk; } ;
struct net_device {int dummy; } ;


 int XGBE_DOWN ;
 int clk_disable_unprepare (int ) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int xgbe_free_memory (struct xgbe_prv_data*) ;
 int xgbe_stop (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_close(struct net_device *netdev)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);


 xgbe_stop(pdata);

 xgbe_free_memory(pdata);


 clk_disable_unprepare(pdata->ptpclk);
 clk_disable_unprepare(pdata->sysclk);

 flush_workqueue(pdata->an_workqueue);
 destroy_workqueue(pdata->an_workqueue);

 flush_workqueue(pdata->dev_workqueue);
 destroy_workqueue(pdata->dev_workqueue);

 set_bit(XGBE_DOWN, &pdata->dev_state);

 return 0;
}
