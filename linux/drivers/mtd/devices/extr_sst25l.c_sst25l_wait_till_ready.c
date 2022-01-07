
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst25l_flash {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long MAX_READY_WAIT_JIFFIES ;
 int SST25L_STATUS_BUSY ;
 int cond_resched () ;
 unsigned long jiffies ;
 int sst25l_status (struct sst25l_flash*,int*) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int sst25l_wait_till_ready(struct sst25l_flash *flash)
{
 unsigned long deadline;
 int status, err;

 deadline = jiffies + MAX_READY_WAIT_JIFFIES;
 do {
  err = sst25l_status(flash, &status);
  if (err)
   return err;
  if (!(status & SST25L_STATUS_BUSY))
   return 0;

  cond_resched();
 } while (!time_after_eq(jiffies, deadline));

 return -ETIMEDOUT;
}
