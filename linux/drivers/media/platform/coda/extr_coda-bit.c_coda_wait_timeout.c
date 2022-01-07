
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ coda_isbusy (struct coda_dev*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int coda_wait_timeout(struct coda_dev *dev)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);

 while (coda_isbusy(dev)) {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
 }
 return 0;
}
