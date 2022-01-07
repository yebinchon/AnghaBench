
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int dummy; } ;


 int __ccdc_enable (struct isp_ccdc_device*,int) ;
 int __ccdc_lsc_enable (struct isp_ccdc_device*,int) ;
 scalar_t__ ccdc_lsc_is_configured (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_enable(struct isp_ccdc_device *ccdc)
{
 if (ccdc_lsc_is_configured(ccdc))
  __ccdc_lsc_enable(ccdc, 1);
 __ccdc_enable(ccdc, 1);
}
