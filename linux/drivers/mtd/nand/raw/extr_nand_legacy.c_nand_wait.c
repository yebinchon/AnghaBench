
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef int status ;


 int NAND_STATUS_READY ;
 int WARN_ON (int) ;
 int cond_resched () ;
 scalar_t__ in_interrupt () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int nand_read_data_op (struct nand_chip*,int*,int,int) ;
 int nand_status_op (struct nand_chip*,int *) ;
 int ndelay (int) ;
 scalar_t__ oops_in_progress ;
 int panic_nand_wait (struct nand_chip*,unsigned long) ;
 scalar_t__ stub1 (struct nand_chip*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int nand_wait(struct nand_chip *chip)
{

 unsigned long timeo = 400;
 u8 status;
 int ret;





 ndelay(100);

 ret = nand_status_op(chip, ((void*)0));
 if (ret)
  return ret;

 if (in_interrupt() || oops_in_progress)
  panic_nand_wait(chip, timeo);
 else {
  timeo = jiffies + msecs_to_jiffies(timeo);
  do {
   if (chip->legacy.dev_ready) {
    if (chip->legacy.dev_ready(chip))
     break;
   } else {
    ret = nand_read_data_op(chip, &status,
       sizeof(status), 1);
    if (ret)
     return ret;

    if (status & NAND_STATUS_READY)
     break;
   }
   cond_resched();
  } while (time_before(jiffies, timeo));
 }

 ret = nand_read_data_op(chip, &status, sizeof(status), 1);
 if (ret)
  return ret;


 WARN_ON(!(status & NAND_STATUS_READY));
 return status;
}
