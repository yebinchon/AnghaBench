
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ started; } ;
struct xgbe_prv_data {scalar_t__ dev_irq; scalar_t__ i2c_irq; int dev; TYPE_1__ i2c; int netdev; } ;


 int devm_free_irq (int ,scalar_t__,struct xgbe_prv_data*) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_i2c_clear_all_interrupts (struct xgbe_prv_data*) ;
 int xgbe_i2c_disable (struct xgbe_prv_data*) ;
 int xgbe_i2c_disable_interrupts (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_i2c_stop(struct xgbe_prv_data *pdata)
{
 if (!pdata->i2c.started)
  return;

 netif_dbg(pdata, link, pdata->netdev, "stopping I2C\n");

 pdata->i2c.started = 0;

 xgbe_i2c_disable_interrupts(pdata);
 xgbe_i2c_disable(pdata);
 xgbe_i2c_clear_all_interrupts(pdata);

 if (pdata->dev_irq != pdata->i2c_irq)
  devm_free_irq(pdata->dev, pdata->i2c_irq, pdata);
}
