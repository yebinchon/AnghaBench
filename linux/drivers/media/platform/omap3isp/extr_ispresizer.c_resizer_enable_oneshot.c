
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPRSZ_PCR ;
 int ISPRSZ_PCR_ENABLE ;
 int ISPRSZ_PCR_ONESHOT ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int isp_reg_set (struct isp_device*,int ,int ,int) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_enable_oneshot(struct isp_res_device *res)
{
 struct isp_device *isp = to_isp_device(res);

 isp_reg_set(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_PCR,
      ISPRSZ_PCR_ENABLE | ISPRSZ_PCR_ONESHOT);
}
