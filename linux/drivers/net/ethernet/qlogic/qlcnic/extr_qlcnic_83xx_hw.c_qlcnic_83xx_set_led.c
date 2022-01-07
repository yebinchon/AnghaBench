
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int state; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {scalar_t__ op_mode; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;


 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 int __QLCNIC_LED_ENABLE ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int qlcnic_83xx_config_led (struct qlcnic_adapter*,int,int ) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int qlcnic_83xx_set_led(struct net_device *netdev,
    enum ethtool_phys_id_state state)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int err = -EIO, active = 1;

 if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
  netdev_warn(netdev,
       "LED test is not supported in non-privileged mode\n");
  return -EOPNOTSUPP;
 }

 switch (state) {
 case 129:
  if (test_and_set_bit(__QLCNIC_LED_ENABLE, &adapter->state))
   return -EBUSY;

  if (test_bit(__QLCNIC_RESETTING, &adapter->state))
   break;

  err = qlcnic_83xx_config_led(adapter, active, 0);
  if (err)
   netdev_err(netdev, "Failed to set LED blink state\n");
  break;
 case 128:
  active = 0;

  if (test_bit(__QLCNIC_RESETTING, &adapter->state))
   break;

  err = qlcnic_83xx_config_led(adapter, active, 0);
  if (err)
   netdev_err(netdev, "Failed to reset LED blink state\n");
  break;

 default:
  return -EINVAL;
 }

 if (!active || err)
  clear_bit(__QLCNIC_LED_ENABLE, &adapter->state);

 return err;
}
