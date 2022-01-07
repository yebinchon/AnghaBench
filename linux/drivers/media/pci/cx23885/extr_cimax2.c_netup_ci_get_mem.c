
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;


 int MC417_RWD ;
 int NETUP_ACK ;
 int NETUP_CTRL_OFF ;
 int cx_read (int ) ;
 int cx_set (int ,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int netup_ci_get_mem(struct cx23885_dev *dev)
{
 int mem;
 unsigned long timeout = jiffies + msecs_to_jiffies(1);

 for (;;) {
  mem = cx_read(MC417_RWD);
  if ((mem & NETUP_ACK) == 0)
   break;
  if (time_after(jiffies, timeout))
   break;
  udelay(1);
 }

 cx_set(MC417_RWD, NETUP_CTRL_OFF);

 return mem & 0xff;
}
