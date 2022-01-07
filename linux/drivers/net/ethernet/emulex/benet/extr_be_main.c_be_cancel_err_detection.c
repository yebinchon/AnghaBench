
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_error_recovery {int err_detection_work; } ;
struct be_adapter {int flags; struct be_error_recovery error_recovery; } ;


 int BE_FLAGS_ERR_DETECTION_SCHEDULED ;
 int be_err_recovery_workq ;
 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void be_cancel_err_detection(struct be_adapter *adapter)
{
 struct be_error_recovery *err_rec = &adapter->error_recovery;

 if (!be_err_recovery_workq)
  return;

 if (adapter->flags & BE_FLAGS_ERR_DETECTION_SCHEDULED) {
  cancel_delayed_work_sync(&err_rec->err_detection_work);
  adapter->flags &= ~BE_FLAGS_ERR_DETECTION_SCHEDULED;
 }
}
