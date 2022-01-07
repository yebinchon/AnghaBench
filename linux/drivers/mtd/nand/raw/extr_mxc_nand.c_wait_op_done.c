
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxc_nand_host {int dev; TYPE_1__* devtype_data; int op_completion; } ;
struct TYPE_2__ {int (* check_int ) (struct mxc_nand_host*) ;} ;


 int ETIMEDOUT ;
 int HZ ;
 int WARN_ONCE (int,char*,int) ;
 int dev_dbg (int ,char*) ;
 int irq_control (struct mxc_nand_host*,int) ;
 int reinit_completion (int *) ;
 int stub1 (struct mxc_nand_host*) ;
 int stub2 (struct mxc_nand_host*) ;
 int stub3 (struct mxc_nand_host*) ;
 int udelay (int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wait_op_done(struct mxc_nand_host *host, int useirq)
{
 int ret = 0;





 if (host->devtype_data->check_int(host))
  return 0;

 if (useirq) {
  unsigned long timeout;

  reinit_completion(&host->op_completion);

  irq_control(host, 1);

  timeout = wait_for_completion_timeout(&host->op_completion, HZ);
  if (!timeout && !host->devtype_data->check_int(host)) {
   dev_dbg(host->dev, "timeout waiting for irq\n");
   ret = -ETIMEDOUT;
  }
 } else {
  int max_retries = 8000;
  int done;

  do {
   udelay(1);

   done = host->devtype_data->check_int(host);
   if (done)
    break;

  } while (--max_retries);

  if (!done) {
   dev_dbg(host->dev, "timeout polling for completion\n");
   ret = -ETIMEDOUT;
  }
 }

 WARN_ONCE(ret < 0, "timeout! useirq=%d\n", useirq);

 return ret;
}
