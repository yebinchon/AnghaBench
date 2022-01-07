
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int irq; int finish_tasklet; int timeout_tasklet; int crc_tasklet; int fifo_tasklet; int card_tasklet; } ;


 int DRIVER_NAME ;
 int IRQF_SHARED ;
 int request_irq (int,int ,int ,int ,struct wbsd_host*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int wbsd_irq ;
 int wbsd_tasklet_card ;
 int wbsd_tasklet_crc ;
 int wbsd_tasklet_fifo ;
 int wbsd_tasklet_finish ;
 int wbsd_tasklet_timeout ;

__attribute__((used)) static int wbsd_request_irq(struct wbsd_host *host, int irq)
{
 int ret;




 tasklet_init(&host->card_tasklet, wbsd_tasklet_card,
   (unsigned long)host);
 tasklet_init(&host->fifo_tasklet, wbsd_tasklet_fifo,
   (unsigned long)host);
 tasklet_init(&host->crc_tasklet, wbsd_tasklet_crc,
   (unsigned long)host);
 tasklet_init(&host->timeout_tasklet, wbsd_tasklet_timeout,
   (unsigned long)host);
 tasklet_init(&host->finish_tasklet, wbsd_tasklet_finish,
   (unsigned long)host);




 ret = request_irq(irq, wbsd_irq, IRQF_SHARED, DRIVER_NAME, host);
 if (ret)
  return ret;

 host->irq = irq;

 return 0;
}
