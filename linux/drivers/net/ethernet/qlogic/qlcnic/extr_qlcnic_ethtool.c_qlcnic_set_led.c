
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_adapter {int drv_sds_rings; int state; TYPE_3__* pdev; TYPE_2__* nic_ops; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* config_led ) (struct qlcnic_adapter*,int,int) ;} ;
struct TYPE_4__ {scalar_t__ op_mode; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;


 int QLCNIC_LED_TEST ;
 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 int __QLCNIC_DEV_UP ;
 int __QLCNIC_DIAG_RES_ALLOC ;
 int __QLCNIC_LED_ENABLE ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_led (struct net_device*,int) ;
 int qlcnic_diag_alloc_res (struct net_device*,int ) ;
 int qlcnic_diag_free_res (struct net_device*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct qlcnic_adapter*,int,int) ;
 int stub2 (struct qlcnic_adapter*,int,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_set_led(struct net_device *dev,
     enum ethtool_phys_id_state state)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 int drv_sds_rings = adapter->drv_sds_rings;
 int err = -EIO, active = 1;

 if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_set_led(dev, state);

 if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
  netdev_warn(dev, "LED test not supported for non "
    "privilege function\n");
  return -EOPNOTSUPP;
 }

 switch (state) {
 case 129:
  if (test_and_set_bit(__QLCNIC_LED_ENABLE, &adapter->state))
   return -EBUSY;

  if (test_bit(__QLCNIC_RESETTING, &adapter->state))
   break;

  if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
   if (qlcnic_diag_alloc_res(dev, QLCNIC_LED_TEST))
    break;
   set_bit(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
  }

  if (adapter->nic_ops->config_led(adapter, 1, 0xf) == 0) {
   err = 0;
   break;
  }

  dev_err(&adapter->pdev->dev,
   "Failed to set LED blink state.\n");
  break;

 case 128:
  active = 0;

  if (test_bit(__QLCNIC_RESETTING, &adapter->state))
   break;

  if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
   if (qlcnic_diag_alloc_res(dev, QLCNIC_LED_TEST))
    break;
   set_bit(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
  }

  if (adapter->nic_ops->config_led(adapter, 0, 0xf))
   dev_err(&adapter->pdev->dev,
    "Failed to reset LED blink state.\n");

  break;

 default:
  return -EINVAL;
 }

 if (test_and_clear_bit(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
  qlcnic_diag_free_res(dev, drv_sds_rings);

 if (!active || err)
  clear_bit(__QLCNIC_LED_ENABLE, &adapter->state);

 return err;
}
