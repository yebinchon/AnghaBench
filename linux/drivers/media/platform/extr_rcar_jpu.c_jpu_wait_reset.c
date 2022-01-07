
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpu {int dev; } ;


 int ETIMEDOUT ;
 int JCCMD ;
 int JCCMD_SRST ;
 int JPU_RESET_TIMEOUT ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int jpu_read (struct jpu*,int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int jpu_wait_reset(struct jpu *jpu)
{
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(JPU_RESET_TIMEOUT);

 while (jpu_read(jpu, JCCMD) & JCCMD_SRST) {
  if (time_after(jiffies, timeout)) {
   dev_err(jpu->dev, "timed out in reset\n");
   return -ETIMEDOUT;
  }
  schedule();
 }

 return 0;
}
