
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_ms {int cmd_flags; TYPE_1__* req; } ;
struct tifm_dev {int lock; scalar_t__ addr; int dev; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int CARD_INT ;
 int CMD_READY ;
 int EILSEQ ;
 int ETIME ;
 scalar_t__ SOCK_MS_STATUS ;
 scalar_t__ SOCK_MS_SYSTEM ;
 unsigned int TIFM_MS_STAT_CRC ;
 unsigned int TIFM_MS_STAT_MSINT ;
 unsigned int TIFM_MS_STAT_RDY ;
 unsigned int TIFM_MS_STAT_TOE ;
 unsigned int TIFM_MS_SYS_INTCLR ;
 int dev_dbg (int *,char*,unsigned int,int ) ;
 struct tifm_ms* memstick_priv (struct memstick_host*) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tifm_get_drvdata (struct tifm_dev*) ;
 int tifm_ms_check_status (struct tifm_ms*) ;
 int tifm_ms_complete_cmd (struct tifm_ms*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tifm_ms_card_event(struct tifm_dev *sock)
{
 struct tifm_ms *host;
 unsigned int host_status = 0;
 int rc = 1;

 spin_lock(&sock->lock);
 host = memstick_priv((struct memstick_host *)tifm_get_drvdata(sock));
 host_status = readl(sock->addr + SOCK_MS_STATUS);
 dev_dbg(&sock->dev, "host event: host_status %x, flags %x\n",
  host_status, host->cmd_flags);

 if (host->req) {
  if (host_status & TIFM_MS_STAT_TOE)
   host->req->error = -ETIME;
  else if (host_status & TIFM_MS_STAT_CRC)
   host->req->error = -EILSEQ;

  if (host_status & TIFM_MS_STAT_RDY)
   host->cmd_flags |= CMD_READY;

  if (host_status & TIFM_MS_STAT_MSINT)
   host->cmd_flags |= CARD_INT;

  rc = tifm_ms_check_status(host);

 }

 writel(TIFM_MS_SYS_INTCLR | readl(sock->addr + SOCK_MS_SYSTEM),
        sock->addr + SOCK_MS_SYSTEM);

 if (!rc)
  tifm_ms_complete_cmd(host);

 spin_unlock(&sock->lock);
 return;
}
