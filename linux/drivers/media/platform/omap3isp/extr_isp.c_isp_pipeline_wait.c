
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 unsigned long ISP_STOP_TIMEOUT ;
 unsigned long jiffies ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int isp_pipeline_wait(struct isp_device *isp,
        int(*busy)(struct isp_device *isp))
{
 unsigned long timeout = jiffies + ISP_STOP_TIMEOUT;

 while (!time_after(jiffies, timeout)) {
  if (!busy(isp))
   return 0;
 }

 return 1;
}
