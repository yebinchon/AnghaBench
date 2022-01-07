
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 int __omap3isp_put (struct isp_device*,int) ;

void omap3isp_put(struct isp_device *isp)
{
 __omap3isp_put(isp, 1);
}
