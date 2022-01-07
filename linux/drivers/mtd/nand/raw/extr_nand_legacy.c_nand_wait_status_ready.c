
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
typedef int status ;


 int NAND_STATUS_READY ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int nand_read_data_op (struct nand_chip*,int*,int,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int touch_softlockup_watchdog () ;

__attribute__((used)) static void nand_wait_status_ready(struct nand_chip *chip, unsigned long timeo)
{
 int ret;

 timeo = jiffies + msecs_to_jiffies(timeo);
 do {
  u8 status;

  ret = nand_read_data_op(chip, &status, sizeof(status), 1);
  if (ret)
   return;

  if (status & NAND_STATUS_READY)
   break;
  touch_softlockup_watchdog();
 } while (time_before(jiffies, timeo));
}
