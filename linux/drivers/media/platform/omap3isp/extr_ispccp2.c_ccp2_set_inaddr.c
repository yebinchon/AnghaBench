
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_ccp2_device {int dummy; } ;


 int ISPCCP2_LCM_SRC_ADDR ;
 int OMAP3_ISP_IOMEM_CCP2 ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;

__attribute__((used)) static void ccp2_set_inaddr(struct isp_ccp2_device *ccp2, u32 addr)
{
 struct isp_device *isp = to_isp_device(ccp2);

 isp_reg_writel(isp, addr, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCM_SRC_ADDR);
}
