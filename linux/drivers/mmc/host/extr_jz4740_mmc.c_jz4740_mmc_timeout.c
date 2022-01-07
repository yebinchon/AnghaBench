
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct jz4740_mmc_host {TYPE_2__* req; int waiting; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int error; } ;


 int ETIMEDOUT ;
 int JZ_MMC_IRQ_END_CMD_RES ;
 struct jz4740_mmc_host* from_timer (int ,struct timer_list*,int ) ;
 struct jz4740_mmc_host* host ;
 int jz4740_mmc_request_done (struct jz4740_mmc_host*) ;
 int jz4740_mmc_set_irq_enabled (struct jz4740_mmc_host*,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 int timeout_timer ;

__attribute__((used)) static void jz4740_mmc_timeout(struct timer_list *t)
{
 struct jz4740_mmc_host *host = from_timer(host, t, timeout_timer);

 if (!test_and_clear_bit(0, &host->waiting))
  return;

 jz4740_mmc_set_irq_enabled(host, JZ_MMC_IRQ_END_CMD_RES, 0);

 host->req->cmd->error = -ETIMEDOUT;
 jz4740_mmc_request_done(host);
}
