
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tmio_mmc_host {int ios_lock; int clk_cache; TYPE_5__* mrq; TYPE_2__* pdev; int (* set_clock ) (struct tmio_mmc_host*,int ) ;int lock; int last_req_ts; } ;
struct mmc_ios {int power_mode; int clock; int bus_width; int vdd; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {TYPE_1__* cmd; } ;
struct TYPE_9__ {int comm; } ;
struct TYPE_8__ {struct device dev; } ;
struct TYPE_7__ {int opcode; } ;


 int EBUSY ;
 int EINTR ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (TYPE_5__*) ;



 int PTR_ERR (TYPE_5__*) ;
 TYPE_3__* current ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int,...) ;
 int jiffies ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct tmio_mmc_host*,int ) ;
 int stub2 (struct tmio_mmc_host*,int ) ;
 int stub3 (struct tmio_mmc_host*,int ) ;
 int task_pid_nr (TYPE_3__*) ;
 int tmio_mmc_power_off (struct tmio_mmc_host*) ;
 int tmio_mmc_power_on (struct tmio_mmc_host*,int ) ;
 int tmio_mmc_set_bus_width (struct tmio_mmc_host*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tmio_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);
 struct device *dev = &host->pdev->dev;
 unsigned long flags;

 mutex_lock(&host->ios_lock);

 spin_lock_irqsave(&host->lock, flags);
 if (host->mrq) {
  if (IS_ERR(host->mrq)) {
   dev_dbg(dev,
    "%s.%d: concurrent .set_ios(), clk %u, mode %u\n",
    current->comm, task_pid_nr(current),
    ios->clock, ios->power_mode);
   host->mrq = ERR_PTR(-EINTR);
  } else {
   dev_dbg(dev,
    "%s.%d: CMD%u active since %lu, now %lu!\n",
    current->comm, task_pid_nr(current),
    host->mrq->cmd->opcode, host->last_req_ts,
    jiffies);
  }
  spin_unlock_irqrestore(&host->lock, flags);

  mutex_unlock(&host->ios_lock);
  return;
 }

 host->mrq = ERR_PTR(-EBUSY);

 spin_unlock_irqrestore(&host->lock, flags);

 switch (ios->power_mode) {
 case 130:
  tmio_mmc_power_off(host);
  host->set_clock(host, 0);
  break;
 case 128:
  tmio_mmc_power_on(host, ios->vdd);
  host->set_clock(host, ios->clock);
  tmio_mmc_set_bus_width(host, ios->bus_width);
  break;
 case 129:
  host->set_clock(host, ios->clock);
  tmio_mmc_set_bus_width(host, ios->bus_width);
  break;
 }


 usleep_range(140, 200);
 if (PTR_ERR(host->mrq) == -EINTR)
  dev_dbg(&host->pdev->dev,
   "%s.%d: IOS interrupted: clk %u, mode %u",
   current->comm, task_pid_nr(current),
   ios->clock, ios->power_mode);
 host->mrq = ((void*)0);

 host->clk_cache = ios->clock;

 mutex_unlock(&host->ios_lock);
}
