
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_dev {TYPE_3__* dev_cmd_regs; } ;
struct ionic {int dev; struct ionic_dev idev; } ;
struct TYPE_4__ {int opcode; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {int doorbell; int done; TYPE_2__ cmd; } ;


 int ETIMEDOUT ;
 unsigned long HZ ;
 int IONIC_RC_EAGAIN ;
 int WARN_ON (int ) ;
 int dev_dbg (int ,char*,int ,int,int,unsigned long,unsigned long) ;
 int dev_err (int ,char*,int ,int,int ,int) ;
 int dev_warn (int ,char*,int ,int,unsigned long) ;
 int in_interrupt () ;
 int ionic_dev_cmd_done (struct ionic_dev*) ;
 int ionic_dev_cmd_status (struct ionic_dev*) ;
 int ionic_error_to_errno (int) ;
 int ionic_error_to_str (int) ;
 int ionic_opcode_to_str (int) ;
 int iowrite32 (int,int *) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int ionic_dev_cmd_wait(struct ionic *ionic, unsigned long max_seconds)
{
 struct ionic_dev *idev = &ionic->idev;
 unsigned long start_time;
 unsigned long max_wait;
 unsigned long duration;
 int opcode;
 int done;
 int err;

 WARN_ON(in_interrupt());




 max_wait = jiffies + (max_seconds * HZ);
try_again:
 start_time = jiffies;
 do {
  done = ionic_dev_cmd_done(idev);
  if (done)
   break;
  msleep(20);
 } while (!done && time_before(jiffies, max_wait));
 duration = jiffies - start_time;

 opcode = idev->dev_cmd_regs->cmd.cmd.opcode;
 dev_dbg(ionic->dev, "DEVCMD %s (%d) done=%d took %ld secs (%ld jiffies)\n",
  ionic_opcode_to_str(opcode), opcode,
  done, duration / HZ, duration);

 if (!done && !time_before(jiffies, max_wait)) {
  dev_warn(ionic->dev, "DEVCMD %s (%d) timeout after %ld secs\n",
    ionic_opcode_to_str(opcode), opcode, max_seconds);
  return -ETIMEDOUT;
 }

 err = ionic_dev_cmd_status(&ionic->idev);
 if (err) {
  if (err == IONIC_RC_EAGAIN && !time_after(jiffies, max_wait)) {
   dev_err(ionic->dev, "DEV_CMD %s (%d) error, %s (%d) retrying...\n",
    ionic_opcode_to_str(opcode), opcode,
    ionic_error_to_str(err), err);

   msleep(1000);
   iowrite32(0, &idev->dev_cmd_regs->done);
   iowrite32(1, &idev->dev_cmd_regs->doorbell);
   goto try_again;
  }

  dev_err(ionic->dev, "DEV_CMD %s (%d) error, %s (%d) failed\n",
   ionic_opcode_to_str(opcode), opcode,
   ionic_error_to_str(err), err);

  return ionic_error_to_errno(err);
 }

 return 0;
}
