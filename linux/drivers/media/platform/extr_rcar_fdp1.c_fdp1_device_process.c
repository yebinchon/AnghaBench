
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_job {int dummy; } ;
struct fdp1_dev {int device_process_lock; } ;
struct fdp1_ctx {struct fdp1_dev* fdp1; } ;


 int FD1_CTL_CLKCTRL ;
 int FD1_CTL_CLKCTRL_CSTP_N ;
 int FD1_CTL_CMD ;
 int FD1_CTL_CMD_STRCMD ;
 int FD1_CTL_IRQENB ;
 int FD1_CTL_IRQ_MASK ;
 int FD1_CTL_REGEND ;
 int FD1_CTL_REGEND_REGEND ;
 int FD1_CTL_SGCMD ;
 int FD1_CTL_SGCMD_SGEN ;
 int FD1_IPC_LMEM ;
 int FD1_IPC_LMEM_LINEAR ;
 int fdp1_configure_deint_mode (struct fdp1_ctx*,struct fdp1_job*) ;
 int fdp1_configure_rpf (struct fdp1_ctx*,struct fdp1_job*) ;
 int fdp1_configure_wpf (struct fdp1_ctx*,struct fdp1_job*) ;
 int fdp1_set_ipc_dli (struct fdp1_ctx*) ;
 int fdp1_set_ipc_sensor (struct fdp1_ctx*) ;
 int fdp1_write (struct fdp1_dev*,int ,int ) ;
 struct fdp1_job* get_queued_job (struct fdp1_dev*) ;
 int queue_hw_job (struct fdp1_dev*,struct fdp1_job*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fdp1_device_process(struct fdp1_ctx *ctx)

{
 struct fdp1_dev *fdp1 = ctx->fdp1;
 struct fdp1_job *job;
 unsigned long flags;

 spin_lock_irqsave(&fdp1->device_process_lock, flags);


 job = get_queued_job(fdp1);
 if (!job) {




  spin_unlock_irqrestore(&fdp1->device_process_lock, flags);
  return 0;
 }


 fdp1_write(fdp1, FD1_CTL_CLKCTRL_CSTP_N, FD1_CTL_CLKCTRL);


 fdp1_configure_deint_mode(ctx, job);


 fdp1_set_ipc_dli(ctx);


 fdp1_set_ipc_sensor(ctx);


 fdp1_configure_rpf(ctx, job);


 fdp1_configure_wpf(ctx, job);


 fdp1_write(fdp1, FD1_IPC_LMEM_LINEAR, FD1_IPC_LMEM);


 fdp1_write(fdp1, FD1_CTL_IRQ_MASK, FD1_CTL_IRQENB);




 queue_hw_job(fdp1, job);


 fdp1_write(fdp1, FD1_CTL_CMD_STRCMD, FD1_CTL_CMD);


 fdp1_write(fdp1, FD1_CTL_REGEND_REGEND, FD1_CTL_REGEND);


 fdp1_write(fdp1, FD1_CTL_SGCMD_SGEN, FD1_CTL_SGCMD);

 spin_unlock_irqrestore(&fdp1->device_process_lock, flags);

 return 0;
}
