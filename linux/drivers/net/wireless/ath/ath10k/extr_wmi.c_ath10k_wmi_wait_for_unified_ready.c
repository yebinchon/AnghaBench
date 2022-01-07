
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unified_ready; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int ETIMEDOUT ;
 int WMI_UNIFIED_READY_TIMEOUT_HZ ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

int ath10k_wmi_wait_for_unified_ready(struct ath10k *ar)
{
 unsigned long time_left;

 time_left = wait_for_completion_timeout(&ar->wmi.unified_ready,
      WMI_UNIFIED_READY_TIMEOUT_HZ);
 if (!time_left)
  return -ETIMEDOUT;
 return 0;
}
