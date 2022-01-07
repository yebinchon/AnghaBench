
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_device {int dummy; } ;
struct TYPE_2__ {int dma; int fpnum; } ;
struct isp_ccdc_device {TYPE_1__ fpc; int fpc_en; } ;


 int ISPCCDC_FPC ;
 int ISPCCDC_FPC_ADDR ;
 int ISPCCDC_FPC_FPCEN ;
 int ISPCCDC_FPC_FPNUM_SHIFT ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr (struct isp_device*,int ,int ,int) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_configure_fpc(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);

 isp_reg_clr(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC, ISPCCDC_FPC_FPCEN);

 if (!ccdc->fpc_en)
  return;

 isp_reg_writel(isp, ccdc->fpc.dma, OMAP3_ISP_IOMEM_CCDC,
         ISPCCDC_FPC_ADDR);

 isp_reg_writel(isp, (ccdc->fpc.fpnum << ISPCCDC_FPC_FPNUM_SHIFT),
         OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC);
 isp_reg_writel(isp, (ccdc->fpc.fpnum << ISPCCDC_FPC_FPNUM_SHIFT) |
         ISPCCDC_FPC_FPCEN, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC);
}
