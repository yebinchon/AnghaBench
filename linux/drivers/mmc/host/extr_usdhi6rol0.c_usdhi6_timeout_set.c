
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usdhi6_host {int rate; int mmc; struct mmc_request* mrq; } ;
struct mmc_request {TYPE_2__* data; TYPE_1__* cmd; } ;
struct TYPE_4__ {int timeout_ns; int timeout_clks; } ;
struct TYPE_3__ {int busy_timeout; } ;


 int USDHI6_SD_OPTION ;
 int USDHI6_SD_OPTION_TIMEOUT_MASK ;
 int USDHI6_SD_OPTION_TIMEOUT_SHIFT ;
 int dev_dbg (int ,char*,char*,unsigned long,int) ;
 int mmc_dev (int ) ;
 int order_base_2 (unsigned long) ;
 int usdhi6_read (struct usdhi6_host*,int ) ;
 int usdhi6_write (struct usdhi6_host*,int ,int) ;

__attribute__((used)) static void usdhi6_timeout_set(struct usdhi6_host *host)
{
 struct mmc_request *mrq = host->mrq;
 u32 val;
 unsigned long ticks;

 if (!mrq->data)
  ticks = host->rate / 1000 * mrq->cmd->busy_timeout;
 else
  ticks = host->rate / 1000000 * (mrq->data->timeout_ns / 1000) +
   mrq->data->timeout_clks;

 if (!ticks || ticks > 1 << 27)

  val = 14;
 else if (ticks < 1 << 13)

  val = 0;
 else
  val = order_base_2(ticks) - 13;

 dev_dbg(mmc_dev(host->mmc), "Set %s timeout %lu ticks @ %lu Hz\n",
  mrq->data ? "data" : "cmd", ticks, host->rate);


 usdhi6_write(host, USDHI6_SD_OPTION, (val << USDHI6_SD_OPTION_TIMEOUT_SHIFT) |
       (usdhi6_read(host, USDHI6_SD_OPTION) & ~USDHI6_SD_OPTION_TIMEOUT_MASK));
}
