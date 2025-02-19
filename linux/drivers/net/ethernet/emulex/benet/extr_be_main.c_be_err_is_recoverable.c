
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct be_error_recovery {int last_err_code; scalar_t__ last_recovery_time; scalar_t__ probe_time; } ;
struct be_adapter {TYPE_1__* pdev; struct be_error_recovery error_recovery; } ;
struct TYPE_2__ {int dev; } ;


 int ERR_RECOVERY_IDLE_TIME ;
 int ERR_RECOVERY_INTERVAL ;
 int MSEC_PER_SEC ;
 int POST_ERR_RECOVERY_CODE_MASK ;
 int POST_STAGE_RECOVERABLE_ERR ;
 int be_POST_stage_get (struct be_adapter*) ;
 int dev_err (int *,char*,...) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before_eq (scalar_t__,unsigned long) ;

__attribute__((used)) static bool be_err_is_recoverable(struct be_adapter *adapter)
{
 struct be_error_recovery *err_rec = &adapter->error_recovery;
 unsigned long initial_idle_time =
  msecs_to_jiffies(ERR_RECOVERY_IDLE_TIME);
 unsigned long recovery_interval =
  msecs_to_jiffies(ERR_RECOVERY_INTERVAL);
 u16 ue_err_code;
 u32 val;

 val = be_POST_stage_get(adapter);
 if ((val & POST_STAGE_RECOVERABLE_ERR) != POST_STAGE_RECOVERABLE_ERR)
  return 0;
 ue_err_code = val & POST_ERR_RECOVERY_CODE_MASK;
 if (ue_err_code == 0)
  return 0;

 dev_err(&adapter->pdev->dev, "Recoverable HW error code: 0x%x\n",
  ue_err_code);

 if (time_before_eq(jiffies - err_rec->probe_time, initial_idle_time)) {
  dev_err(&adapter->pdev->dev,
   "Cannot recover within %lu sec from driver load\n",
   jiffies_to_msecs(initial_idle_time) / MSEC_PER_SEC);
  return 0;
 }

 if (err_rec->last_recovery_time && time_before_eq(
  jiffies - err_rec->last_recovery_time, recovery_interval)) {
  dev_err(&adapter->pdev->dev,
   "Cannot recover within %lu sec from last recovery\n",
   jiffies_to_msecs(recovery_interval) / MSEC_PER_SEC);
  return 0;
 }

 if (ue_err_code == err_rec->last_err_code) {
  dev_err(&adapter->pdev->dev,
   "Cannot recover from a consecutive TPE error\n");
  return 0;
 }

 err_rec->last_recovery_time = jiffies;
 err_rec->last_err_code = ue_err_code;
 return 1;
}
