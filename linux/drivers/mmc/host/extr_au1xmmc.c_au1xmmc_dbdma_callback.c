
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xmmc_host {int flags; int data_task; int mrq; } ;


 int HOST_F_STOP ;
 int SEND_STOP (struct au1xmmc_host*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void au1xmmc_dbdma_callback(int irq, void *dev_id)
{
 struct au1xmmc_host *host = (struct au1xmmc_host *)dev_id;


 if (!host->mrq)
  return;

 if (host->flags & HOST_F_STOP)
  SEND_STOP(host);

 tasklet_schedule(&host->data_task);
}
