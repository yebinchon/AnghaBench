
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct memstick_host {int dev; } ;
struct jmb38x_ms_host {int cmd_flags; TYPE_3__* req; scalar_t__ addr; TYPE_2__* chip; int timer; } ;
struct TYPE_6__ {int int_reg; scalar_t__ data_dir; int error; int sg; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ BLOCK ;
 scalar_t__ DMA_CONTROL ;
 int DMA_DATA ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ETIME ;
 scalar_t__ HOST_CONTROL ;
 unsigned int HOST_CONTROL_LED ;
 scalar_t__ INT_SIGNAL_ENABLE ;
 scalar_t__ INT_STATUS ;
 scalar_t__ INT_STATUS_ENABLE ;
 unsigned int INT_STATUS_FIFO_RRDY ;
 unsigned int INT_STATUS_FIFO_WRDY ;
 scalar_t__ READ ;
 scalar_t__ STATUS ;
 int del_timer (int *) ;
 int dev_dbg (int *,char*,unsigned int) ;
 int dma_unmap_sg (int *,int *,int,int ) ;
 scalar_t__ jmb38x_ms_issue_cmd (struct memstick_host*) ;
 int memstick_next_req (struct memstick_host*,TYPE_3__**) ;
 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void jmb38x_ms_complete_cmd(struct memstick_host *msh, int last)
{
 struct jmb38x_ms_host *host = memstick_priv(msh);
 unsigned int t_val = 0;
 int rc;

 del_timer(&host->timer);

 dev_dbg(&msh->dev, "c control %08x\n",
  readl(host->addr + HOST_CONTROL));
 dev_dbg(&msh->dev, "c status %08x\n",
  readl(host->addr + INT_STATUS));
 dev_dbg(&msh->dev, "c hstatus %08x\n", readl(host->addr + STATUS));

 host->req->int_reg = readl(host->addr + STATUS) & 0xff;

 writel(0, host->addr + BLOCK);
 writel(0, host->addr + DMA_CONTROL);

 if (host->cmd_flags & DMA_DATA) {
  dma_unmap_sg(&host->chip->pdev->dev, &host->req->sg, 1,
        host->req->data_dir == READ
        ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
 } else {
  t_val = readl(host->addr + INT_STATUS_ENABLE);
  if (host->req->data_dir == READ)
   t_val &= ~INT_STATUS_FIFO_RRDY;
  else
   t_val &= ~INT_STATUS_FIFO_WRDY;

  writel(t_val, host->addr + INT_STATUS_ENABLE);
  writel(t_val, host->addr + INT_SIGNAL_ENABLE);
 }

 writel((~HOST_CONTROL_LED) & readl(host->addr + HOST_CONTROL),
        host->addr + HOST_CONTROL);

 if (!last) {
  do {
   rc = memstick_next_req(msh, &host->req);
  } while (!rc && jmb38x_ms_issue_cmd(msh));
 } else {
  do {
   rc = memstick_next_req(msh, &host->req);
   if (!rc)
    host->req->error = -ETIME;
  } while (!rc);
 }
}
