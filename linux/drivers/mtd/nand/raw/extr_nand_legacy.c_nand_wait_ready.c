
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int cond_resched () ;
 scalar_t__ in_interrupt () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ oops_in_progress ;
 void panic_nand_wait_ready (struct nand_chip*,unsigned long) ;
 int pr_warn_ratelimited (char*) ;
 scalar_t__ stub1 (struct nand_chip*) ;
 scalar_t__ stub2 (struct nand_chip*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

void nand_wait_ready(struct nand_chip *chip)
{
 unsigned long timeo = 400;

 if (in_interrupt() || oops_in_progress)
  return panic_nand_wait_ready(chip, timeo);


 timeo = jiffies + msecs_to_jiffies(timeo);
 do {
  if (chip->legacy.dev_ready(chip))
   return;
  cond_resched();
 } while (time_before(jiffies, timeo));

 if (!chip->legacy.dev_ready(chip))
  pr_warn_ratelimited("timeout while waiting for chip to become ready\n");
}
