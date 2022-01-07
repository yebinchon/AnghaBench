
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_smi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int SR_WIP ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 int spear_smi_read_sr (struct spear_smi*,int ) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int spear_smi_wait_till_ready(struct spear_smi *dev, u32 bank,
  unsigned long timeout)
{
 unsigned long finish;
 int status;

 finish = jiffies + timeout;
 do {
  status = spear_smi_read_sr(dev, bank);
  if (status < 0) {
   if (status == -ETIMEDOUT)
    continue;
   return status;
  } else if (!(status & SR_WIP)) {
   return 0;
  }

  cond_resched();
 } while (!time_after_eq(jiffies, finish));

 dev_err(&dev->pdev->dev, "smi controller is busy, timeout\n");
 return -EBUSY;
}
