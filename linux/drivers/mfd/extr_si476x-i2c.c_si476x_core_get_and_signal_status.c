
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {int tuning; int stc; TYPE_1__* client; int command; int cts; } ;
struct TYPE_2__ {int dev; } ;


 int SI476X_CTS ;
 int SI476X_FM_RDS_INT ;
 int SI476X_STC_INT ;
 int atomic_set (int *,int) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int si476x_core_get_status (struct si476x_core*) ;
 int si476x_core_start_rds_drainer_once (struct si476x_core*) ;
 int wake_up (int *) ;

__attribute__((used)) static void si476x_core_get_and_signal_status(struct si476x_core *core)
{
 int status = si476x_core_get_status(core);
 if (status < 0) {
  dev_err(&core->client->dev, "Failed to get status\n");
  return;
 }

 if (status & SI476X_CTS) {






  dev_dbg(&core->client->dev, "[interrupt] CTSINT\n");
  atomic_set(&core->cts, 1);
  wake_up(&core->command);
 }

 if (status & SI476X_FM_RDS_INT) {
  dev_dbg(&core->client->dev, "[interrupt] RDSINT\n");
  si476x_core_start_rds_drainer_once(core);
 }

 if (status & SI476X_STC_INT) {
  dev_dbg(&core->client->dev, "[interrupt] STCINT\n");
  atomic_set(&core->stc, 1);
  wake_up(&core->tuning);
 }
}
