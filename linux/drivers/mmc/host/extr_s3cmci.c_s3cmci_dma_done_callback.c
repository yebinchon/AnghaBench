
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3cmci_host {int dma_complete; int complete_lock; int pio_tasklet; int complete_what; TYPE_1__* mrq; } ;
struct TYPE_2__ {int data; } ;


 int BUG_ON (int) ;
 int COMPLETION_FINALIZE ;
 int dbg (struct s3cmci_host*,int ,char*) ;
 int dbg_dma ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void s3cmci_dma_done_callback(void *arg)
{
 struct s3cmci_host *host = arg;
 unsigned long iflags;

 BUG_ON(!host->mrq);
 BUG_ON(!host->mrq->data);

 spin_lock_irqsave(&host->complete_lock, iflags);

 dbg(host, dbg_dma, "DMA FINISHED\n");

 host->dma_complete = 1;
 host->complete_what = COMPLETION_FINALIZE;

 tasklet_schedule(&host->pio_tasklet);
 spin_unlock_irqrestore(&host->complete_lock, iflags);

}
