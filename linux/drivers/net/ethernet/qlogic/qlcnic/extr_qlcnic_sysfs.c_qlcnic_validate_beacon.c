
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct qlcnic_adapter {int dummy; } ;


 int DRV ;
 int EINVAL ;
 scalar_t__ LSB (int ) ;
 scalar_t__ MSB (int ) ;
 int QLCDB (struct qlcnic_adapter*,int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ __QLCNIC_MAX_LED_RATE ;
 scalar_t__ __QLCNIC_MAX_LED_STATE ;

__attribute__((used)) static int qlcnic_validate_beacon(struct qlcnic_adapter *adapter, u16 beacon,
      u8 *state, u8 *rate)
{
 *rate = LSB(beacon);
 *state = MSB(beacon);

 QLCDB(adapter, DRV, "rate %x state %x\n", *rate, *state);

 if (!*state) {
  *rate = __QLCNIC_MAX_LED_RATE;
  return 0;
 } else if (*state > __QLCNIC_MAX_LED_STATE) {
  return -EINVAL;
 }

 if ((!*rate) || (*rate > __QLCNIC_MAX_LED_RATE))
  return -EINVAL;

 return 0;
}
