
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_ms {int cmd_flags; scalar_t__ use_dma; scalar_t__ req; } ;
struct tifm_dev {int lock; scalar_t__ addr; int dev; } ;
struct memstick_host {int dummy; } ;


 int FIFO_READY ;
 scalar_t__ SOCK_DMA_FIFO_STATUS ;
 scalar_t__ SOCK_MS_STATUS ;
 unsigned int TIFM_FIFO_MORE ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,int ) ;
 struct tifm_ms* memstick_priv (struct memstick_host*) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tifm_get_drvdata (struct tifm_dev*) ;
 int tifm_ms_check_status (struct tifm_ms*) ;
 int tifm_ms_complete_cmd (struct tifm_ms*) ;
 int tifm_ms_transfer_data (struct tifm_ms*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tifm_ms_data_event(struct tifm_dev *sock)
{
 struct tifm_ms *host;
 unsigned int fifo_status = 0, host_status = 0;
 int rc = 1;

 spin_lock(&sock->lock);
 host = memstick_priv((struct memstick_host *)tifm_get_drvdata(sock));
 fifo_status = readl(sock->addr + SOCK_DMA_FIFO_STATUS);
 host_status = readl(sock->addr + SOCK_MS_STATUS);
 dev_dbg(&sock->dev,
  "data event: fifo_status %x, host_status %x, flags %x\n",
  fifo_status, host_status, host->cmd_flags);

 if (host->req) {
  if (host->use_dma && (fifo_status & 1)) {
   host->cmd_flags |= FIFO_READY;
   rc = tifm_ms_check_status(host);
  }
  if (!host->use_dma && (fifo_status & TIFM_FIFO_MORE)) {
   if (!tifm_ms_transfer_data(host)) {
    host->cmd_flags |= FIFO_READY;
    rc = tifm_ms_check_status(host);
   }
  }
 }

 writel(fifo_status, sock->addr + SOCK_DMA_FIFO_STATUS);
 if (!rc)
  tifm_ms_complete_cmd(host);

 spin_unlock(&sock->lock);
}
