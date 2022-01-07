
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_RADR_OFFSET ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_inlineoffset(struct isp_prev_device *prev, u32 offset)
{
 struct isp_device *isp = to_isp_device(prev);

 isp_reg_writel(isp, offset & 0xffff, OMAP3_ISP_IOMEM_PREV,
         ISPPRV_RADR_OFFSET);
}
