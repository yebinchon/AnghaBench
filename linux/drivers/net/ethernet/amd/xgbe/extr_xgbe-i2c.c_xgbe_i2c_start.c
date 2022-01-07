
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int started; } ;
struct xgbe_prv_data {scalar_t__ dev_irq; scalar_t__ i2c_irq; TYPE_1__ i2c; int netdev; int i2c_name; int dev; int tasklet_i2c; } ;


 int devm_request_irq (int ,scalar_t__,int ,int ,int ,struct xgbe_prv_data*) ;
 int link ;
 int netdev_err (int ,char*) ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int xgbe_i2c_isr ;
 int xgbe_i2c_isr_task ;

__attribute__((used)) static int xgbe_i2c_start(struct xgbe_prv_data *pdata)
{
 int ret;

 if (pdata->i2c.started)
  return 0;

 netif_dbg(pdata, link, pdata->netdev, "starting I2C\n");


 if (pdata->dev_irq != pdata->i2c_irq) {
  tasklet_init(&pdata->tasklet_i2c, xgbe_i2c_isr_task,
        (unsigned long)pdata);

  ret = devm_request_irq(pdata->dev, pdata->i2c_irq,
           xgbe_i2c_isr, 0, pdata->i2c_name,
           pdata);
  if (ret) {
   netdev_err(pdata->netdev, "i2c irq request failed\n");
   return ret;
  }
 }

 pdata->i2c.started = 1;

 return 0;
}
