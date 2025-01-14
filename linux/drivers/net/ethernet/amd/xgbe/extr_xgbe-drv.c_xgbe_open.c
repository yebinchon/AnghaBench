
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {char* an_name; char* ecc_name; char* i2c_name; void* dev_workqueue; void* an_workqueue; int sysclk; int ptpclk; int dev_state; int tx_tstamp_work; int stopdev_work; int restart_work; int service_work; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int XGBE_DOWN ;
 int clear_bit (int ,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 int netdev_alert (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 char* netdev_name (struct net_device*) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int snprintf (char*,int,char*,char*) ;
 int xgbe_alloc_memory (struct xgbe_prv_data*) ;
 int xgbe_free_memory (struct xgbe_prv_data*) ;
 int xgbe_phy_reset (struct xgbe_prv_data*) ;
 int xgbe_restart ;
 int xgbe_service ;
 int xgbe_start (struct xgbe_prv_data*) ;
 int xgbe_stopdev ;
 int xgbe_tx_tstamp ;

__attribute__((used)) static int xgbe_open(struct net_device *netdev)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 int ret;


 snprintf(pdata->an_name, sizeof(pdata->an_name) - 1, "%s-pcs",
   netdev_name(netdev));

 snprintf(pdata->ecc_name, sizeof(pdata->ecc_name) - 1, "%s-ecc",
   netdev_name(netdev));

 snprintf(pdata->i2c_name, sizeof(pdata->i2c_name) - 1, "%s-i2c",
   netdev_name(netdev));


 pdata->dev_workqueue =
  create_singlethread_workqueue(netdev_name(netdev));
 if (!pdata->dev_workqueue) {
  netdev_err(netdev, "device workqueue creation failed\n");
  return -ENOMEM;
 }

 pdata->an_workqueue =
  create_singlethread_workqueue(pdata->an_name);
 if (!pdata->an_workqueue) {
  netdev_err(netdev, "phy workqueue creation failed\n");
  ret = -ENOMEM;
  goto err_dev_wq;
 }


 ret = xgbe_phy_reset(pdata);
 if (ret)
  goto err_an_wq;


 ret = clk_prepare_enable(pdata->sysclk);
 if (ret) {
  netdev_alert(netdev, "dma clk_prepare_enable failed\n");
  goto err_an_wq;
 }

 ret = clk_prepare_enable(pdata->ptpclk);
 if (ret) {
  netdev_alert(netdev, "ptp clk_prepare_enable failed\n");
  goto err_sysclk;
 }

 INIT_WORK(&pdata->service_work, xgbe_service);
 INIT_WORK(&pdata->restart_work, xgbe_restart);
 INIT_WORK(&pdata->stopdev_work, xgbe_stopdev);
 INIT_WORK(&pdata->tx_tstamp_work, xgbe_tx_tstamp);

 ret = xgbe_alloc_memory(pdata);
 if (ret)
  goto err_ptpclk;

 ret = xgbe_start(pdata);
 if (ret)
  goto err_mem;

 clear_bit(XGBE_DOWN, &pdata->dev_state);

 return 0;

err_mem:
 xgbe_free_memory(pdata);

err_ptpclk:
 clk_disable_unprepare(pdata->ptpclk);

err_sysclk:
 clk_disable_unprepare(pdata->sysclk);

err_an_wq:
 destroy_workqueue(pdata->an_workqueue);

err_dev_wq:
 destroy_workqueue(pdata->dev_workqueue);

 return ret;
}
