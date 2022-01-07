
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dev; } ;


 int ETIMEDOUT ;
 int cond_resched () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int spi_nor_ready (struct spi_nor*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
      unsigned long timeout_jiffies)
{
 unsigned long deadline;
 int timeout = 0, ret;

 deadline = jiffies + timeout_jiffies;

 while (!timeout) {
  if (time_after_eq(jiffies, deadline))
   timeout = 1;

  ret = spi_nor_ready(nor);
  if (ret < 0)
   return ret;
  if (ret)
   return 0;

  cond_resched();
 }

 dev_err(nor->dev, "flash operation timed out\n");

 return -ETIMEDOUT;
}
