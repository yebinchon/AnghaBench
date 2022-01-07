
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {scalar_t__ state; int sp_task; int sp_flags; } ;


 int DP_INFO (struct qede_dev*,char*) ;
 int DP_NOTICE (struct qede_dev*,char*) ;
 int QEDE_SP_RECOVERY ;
 scalar_t__ QEDE_STATE_RECOVERY ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qede_schedule_recovery_handler(void *dev)
{
 struct qede_dev *edev = dev;

 if (edev->state == QEDE_STATE_RECOVERY) {
  DP_NOTICE(edev,
     "Avoid scheduling a recovery handling since already in recovery state\n");
  return;
 }

 set_bit(QEDE_SP_RECOVERY, &edev->sp_flags);
 schedule_delayed_work(&edev->sp_task, 0);

 DP_INFO(edev, "Scheduled a recovery handler\n");
}
