
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 struct isp_device* __omap3isp_get (struct isp_device*,int) ;

struct isp_device *omap3isp_get(struct isp_device *isp)
{
 return __omap3isp_get(isp, 1);
}
