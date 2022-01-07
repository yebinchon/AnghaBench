
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_WSDR_ADDR ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_set_outaddr(struct isp_prev_device *prev, u32 addr)
{
 struct isp_device *isp = to_isp_device(prev);

 isp_reg_writel(isp, addr, OMAP3_ISP_IOMEM_PREV, ISPPRV_WSDR_ADDR);
}
