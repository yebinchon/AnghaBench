
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int quiet_period; int throttle_state; } ;
struct TYPE_5__ {TYPE_3__* ops; int svc_map; } ;
struct ath10k {scalar_t__ state; TYPE_1__ thermal; TYPE_2__ wmi; int conf_mutex; } ;
struct TYPE_6__ {int gen_pdev_set_quiet_mode; } ;


 int ATH10K_QUIET_START_OFFSET ;
 scalar_t__ ATH10K_STATE_ON ;
 int WMI_SERVICE_THERM_THROT ;
 int ath10k_warn (struct ath10k*,char*,int,int,int,int) ;
 int ath10k_wmi_pdev_set_quiet_mode (struct ath10k*,int,int,int ,int) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int ) ;

void ath10k_thermal_set_throttling(struct ath10k *ar)
{
 u32 period, duration, enabled;
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 if (!test_bit(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map))
  return;

 if (!ar->wmi.ops->gen_pdev_set_quiet_mode)
  return;

 if (ar->state != ATH10K_STATE_ON)
  return;

 period = ar->thermal.quiet_period;
 duration = (period * ar->thermal.throttle_state) / 100;
 enabled = duration ? 1 : 0;

 ret = ath10k_wmi_pdev_set_quiet_mode(ar, period, duration,
          ATH10K_QUIET_START_OFFSET,
          enabled);
 if (ret) {
  ath10k_warn(ar, "failed to set quiet mode period %u duarion %u enabled %u ret %d\n",
       period, duration, enabled, ret);
 }
}
