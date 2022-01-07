
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int dummy; } ;


 int EBUSY ;
 int ccdc_sbl_busy (struct isp_ccdc_device*) ;
 int rmb () ;
 int udelay (int) ;

__attribute__((used)) static int ccdc_sbl_wait_idle(struct isp_ccdc_device *ccdc,
         unsigned int max_wait)
{
 unsigned int wait = 0;

 if (max_wait == 0)
  max_wait = 10000;

 for (wait = 0; wait <= max_wait; wait++) {
  if (!ccdc_sbl_busy(ccdc))
   return 0;

  rmb();
  udelay(1);
 }

 return -EBUSY;
}
