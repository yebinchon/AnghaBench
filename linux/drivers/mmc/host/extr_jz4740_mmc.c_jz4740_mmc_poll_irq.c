
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct jz4740_mmc_host {int timeout_timer; int waiting; } ;


 int HZ ;
 scalar_t__ jiffies ;
 unsigned int jz4740_mmc_read_irq_reg (struct jz4740_mmc_host*) ;
 int jz4740_mmc_set_irq_enabled (struct jz4740_mmc_host*,unsigned int,int) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static unsigned int jz4740_mmc_poll_irq(struct jz4740_mmc_host *host,
 unsigned int irq)
{
 unsigned int timeout = 0x800;
 uint32_t status;

 do {
  status = jz4740_mmc_read_irq_reg(host);
 } while (!(status & irq) && --timeout);

 if (timeout == 0) {
  set_bit(0, &host->waiting);
  mod_timer(&host->timeout_timer, jiffies + 5*HZ);
  jz4740_mmc_set_irq_enabled(host, irq, 1);
  return 1;
 }

 return 0;
}
