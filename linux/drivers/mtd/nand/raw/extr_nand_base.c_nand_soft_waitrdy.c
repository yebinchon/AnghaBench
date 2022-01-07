
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_sdr_timings {int tWB_max; } ;
struct nand_chip {int data_interface; } ;
typedef int status ;


 int ENOTSUPP ;
 int ETIMEDOUT ;
 int NAND_STATUS_READY ;
 int PSEC_TO_NSEC (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int nand_exit_status_op (struct nand_chip*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 int nand_has_exec_op (struct nand_chip*) ;
 int nand_read_data_op (struct nand_chip*,int*,int,int) ;
 int nand_status_op (struct nand_chip*,int *) ;
 int ndelay (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
{
 const struct nand_sdr_timings *timings;
 u8 status = 0;
 int ret;

 if (!nand_has_exec_op(chip))
  return -ENOTSUPP;


 timings = nand_get_sdr_timings(&chip->data_interface);
 ndelay(PSEC_TO_NSEC(timings->tWB_max));

 ret = nand_status_op(chip, ((void*)0));
 if (ret)
  return ret;

 timeout_ms = jiffies + msecs_to_jiffies(timeout_ms);
 do {
  ret = nand_read_data_op(chip, &status, sizeof(status), 1);
  if (ret)
   break;

  if (status & NAND_STATUS_READY)
   break;






  udelay(10);
 } while (time_before(jiffies, timeout_ms));






 nand_exit_status_op(chip);

 if (ret)
  return ret;

 return status & NAND_STATUS_READY ? 0 : -ETIMEDOUT;
}
