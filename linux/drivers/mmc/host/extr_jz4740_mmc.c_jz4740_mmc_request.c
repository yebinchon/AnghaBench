
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cmd; } ;
struct mmc_host {int dummy; } ;
struct jz4740_mmc_host {int timeout_timer; int waiting; int state; struct mmc_request* req; } ;


 int HZ ;
 int JZ4740_MMC_STATE_READ_RESPONSE ;
 int JZ_MMC_IRQ_END_CMD_RES ;
 scalar_t__ jiffies ;
 int jz4740_mmc_send_command (struct jz4740_mmc_host*,int ) ;
 int jz4740_mmc_set_irq_enabled (struct jz4740_mmc_host*,int ,int) ;
 int jz4740_mmc_write_irq_reg (struct jz4740_mmc_host*,int ) ;
 struct jz4740_mmc_host* mmc_priv (struct mmc_host*) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void jz4740_mmc_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct jz4740_mmc_host *host = mmc_priv(mmc);

 host->req = req;

 jz4740_mmc_write_irq_reg(host, ~0);
 jz4740_mmc_set_irq_enabled(host, JZ_MMC_IRQ_END_CMD_RES, 1);

 host->state = JZ4740_MMC_STATE_READ_RESPONSE;
 set_bit(0, &host->waiting);
 mod_timer(&host->timeout_timer, jiffies + 5*HZ);
 jz4740_mmc_send_command(host, req->cmd);
}
