
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cqspi_st {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CQSPI_TIMEOUT_MS ;
 int ETIMEDOUT ;
 int cpu_relax () ;
 scalar_t__ cqspi_is_idle (struct cqspi_st*) ;
 int dev_err (int *,char*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int cqspi_wait_idle(struct cqspi_st *cqspi)
{
 const unsigned int poll_idle_retry = 3;
 unsigned int count = 0;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(CQSPI_TIMEOUT_MS);
 while (1) {





  if (cqspi_is_idle(cqspi))
   count++;
  else
   count = 0;

  if (count >= poll_idle_retry)
   return 0;

  if (time_after(jiffies, timeout)) {

   dev_err(&cqspi->pdev->dev,
    "QSPI is still busy after %dms timeout.\n",
    CQSPI_TIMEOUT_MS);
   return -ETIMEDOUT;
  }

  cpu_relax();
 }
}
