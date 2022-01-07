
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wbsd_host {int flags; int dma; int lock; int fifo_tasklet; int mmc; struct mmc_request* mrq; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int error; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ error; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 int ENOMEDIUM ;
 int WBSD_FCARD_PRESENT ;
 int mmc_hostname (int ) ;
 struct wbsd_host* mmc_priv (struct mmc_host*) ;
 int pr_warn (char*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;
 int wbsd_prepare_data (struct wbsd_host*,TYPE_1__*) ;
 int wbsd_request_end (struct wbsd_host*,struct mmc_request*) ;
 int wbsd_send_command (struct wbsd_host*,struct mmc_command*) ;

__attribute__((used)) static void wbsd_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct wbsd_host *host = mmc_priv(mmc);
 struct mmc_command *cmd;




 spin_lock_bh(&host->lock);

 BUG_ON(host->mrq != ((void*)0));

 cmd = mrq->cmd;

 host->mrq = mrq;




 if (!(host->flags & WBSD_FCARD_PRESENT)) {
  cmd->error = -ENOMEDIUM;
  goto done;
 }

 if (cmd->data) {






  switch (cmd->opcode) {
  case 11:
  case 17:
  case 18:
  case 20:
  case 24:
  case 25:
  case 26:
  case 27:
  case 30:
  case 42:
  case 56:
   break;



  case 51:
   break;

  default:
   pr_warn("%s: Data command %d is not supported by this controller\n",
    mmc_hostname(host->mmc), cmd->opcode);
   cmd->error = -EINVAL;

   goto done;
  }
 }




 if (cmd->data) {
  wbsd_prepare_data(host, cmd->data);

  if (cmd->data->error)
   goto done;
 }

 wbsd_send_command(host, cmd);






 if (cmd->data && !cmd->error) {



  if (host->dma == -1)
   tasklet_schedule(&host->fifo_tasklet);

  spin_unlock_bh(&host->lock);

  return;
 }

done:
 wbsd_request_end(host, mrq);

 spin_unlock_bh(&host->lock);
}
