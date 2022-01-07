
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_error_recovery {int err_detection_work; } ;
struct be_adapter {int flags; struct be_error_recovery error_recovery; } ;


 int BE_FLAGS_ERR_DETECTION_SCHEDULED ;
 int be_err_recovery_workq ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void be_schedule_err_detection(struct be_adapter *adapter, u32 delay)
{
 struct be_error_recovery *err_rec = &adapter->error_recovery;

 if (!be_err_recovery_workq)
  return;

 queue_delayed_work(be_err_recovery_workq, &err_rec->err_detection_work,
      msecs_to_jiffies(delay));
 adapter->flags |= BE_FLAGS_ERR_DETECTION_SCHEDULED;
}
