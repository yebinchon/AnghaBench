
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPRSZ_SDR_OUTADD ;
 int ISPRSZ_SDR_OUTADD_ADDR_SHIFT ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_outaddr(struct isp_res_device *res, u32 addr)
{
 struct isp_device *isp = to_isp_device(res);





 isp_reg_writel(isp, addr << ISPRSZ_SDR_OUTADD_ADDR_SHIFT,
         OMAP3_ISP_IOMEM_RESZ, ISPRSZ_SDR_OUTADD);
}
