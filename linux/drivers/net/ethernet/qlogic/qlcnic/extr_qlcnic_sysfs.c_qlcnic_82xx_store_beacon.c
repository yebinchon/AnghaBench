
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct qlcnic_hardware_context {scalar_t__ beacon_state; } ;
struct qlcnic_adapter {int drv_sds_rings; int state; int netdev; struct qlcnic_hardware_context* ahw; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int QLCNIC_LED_TEST ;
 int __QLCNIC_DEV_UP ;
 int __QLCNIC_DIAG_RES_ALLOC ;
 int __QLCNIC_LED_ENABLE ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int memcpy (int *,char const*,int) ;
 int qlcnic_config_led (struct qlcnic_adapter*,scalar_t__,scalar_t__) ;
 int qlcnic_diag_alloc_res (int ,int ) ;
 int qlcnic_diag_free_res (int ,int) ;
 int qlcnic_get_beacon_state (struct qlcnic_adapter*) ;
 int qlcnic_validate_beacon (struct qlcnic_adapter*,int ,scalar_t__*,scalar_t__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_82xx_store_beacon(struct qlcnic_adapter *adapter,
        const char *buf, size_t len)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int err, drv_sds_rings = adapter->drv_sds_rings;
 u16 beacon;
 u8 b_state, b_rate;

 if (len != sizeof(u16))
  return -EINVAL;

 memcpy(&beacon, buf, sizeof(u16));
 err = qlcnic_validate_beacon(adapter, beacon, &b_state, &b_rate);
 if (err)
  return err;

 qlcnic_get_beacon_state(adapter);

 if (ahw->beacon_state == b_state)
  return len;

 rtnl_lock();
 if (!ahw->beacon_state) {
  if (test_and_set_bit(__QLCNIC_LED_ENABLE, &adapter->state)) {
   rtnl_unlock();
   return -EBUSY;
  }
 }

 if (test_bit(__QLCNIC_RESETTING, &adapter->state)) {
  err = -EIO;
  goto out;
 }

 if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  err = qlcnic_diag_alloc_res(adapter->netdev, QLCNIC_LED_TEST);
  if (err)
   goto out;
  set_bit(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
 }

 err = qlcnic_config_led(adapter, b_state, b_rate);
 if (!err) {
  err = len;
  ahw->beacon_state = b_state;
 }

 if (test_and_clear_bit(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
  qlcnic_diag_free_res(adapter->netdev, drv_sds_rings);

out:
 if (!ahw->beacon_state)
  clear_bit(__QLCNIC_LED_ENABLE, &adapter->state);
 rtnl_unlock();

 return err;
}
