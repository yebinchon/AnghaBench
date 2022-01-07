
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_error_recovery {int recovery_state; void* resched_delay; void* ue_to_reset_time; void* ue_to_poll_time; } ;
struct be_adapter {TYPE_1__* pdev; int pf_num; struct be_error_recovery error_recovery; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EINVAL ;
 int EIO ;



 int ERR_RECOVERY_ST_REINIT ;

 void* ERR_RECOVERY_UE_DETECT_DURATION ;
 int POST_STAGE_RECOVERABLE_ERR ;
 int be_POST_stage_get (struct be_adapter*) ;
 int be_err_is_recoverable (struct be_adapter*) ;
 int be_soft_reset (struct be_adapter*) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int be_tpe_recover(struct be_adapter *adapter)
{
 struct be_error_recovery *err_rec = &adapter->error_recovery;
 int status = -EAGAIN;
 u32 val;

 switch (err_rec->recovery_state) {
 case 130:
  err_rec->recovery_state = 131;
  err_rec->resched_delay = ERR_RECOVERY_UE_DETECT_DURATION;
  break;

 case 131:
  val = be_POST_stage_get(adapter);
  if ((val & POST_STAGE_RECOVERABLE_ERR) !=
      POST_STAGE_RECOVERABLE_ERR) {
   dev_err(&adapter->pdev->dev,
    "Unrecoverable HW error detected: 0x%x\n", val);
   status = -EINVAL;
   err_rec->resched_delay = 0;
   break;
  }

  dev_err(&adapter->pdev->dev, "Recoverable HW error detected\n");






  if (adapter->pf_num == 0) {
   err_rec->recovery_state = 128;
   err_rec->resched_delay = err_rec->ue_to_reset_time -
     ERR_RECOVERY_UE_DETECT_DURATION;
   break;
  }

  err_rec->recovery_state = 129;
  err_rec->resched_delay = err_rec->ue_to_poll_time -
     ERR_RECOVERY_UE_DETECT_DURATION;
  break;

 case 128:
  if (!be_err_is_recoverable(adapter)) {
   dev_err(&adapter->pdev->dev,
    "Failed to meet recovery criteria\n");
   status = -EIO;
   err_rec->resched_delay = 0;
   break;
  }
  be_soft_reset(adapter);
  err_rec->recovery_state = 129;
  err_rec->resched_delay = err_rec->ue_to_poll_time -
     err_rec->ue_to_reset_time;
  break;

 case 129:
  err_rec->recovery_state = ERR_RECOVERY_ST_REINIT;
  err_rec->resched_delay = 0;
  status = 0;
  break;

 default:
  status = -EINVAL;
  err_rec->resched_delay = 0;
  break;
 }

 return status;
}
