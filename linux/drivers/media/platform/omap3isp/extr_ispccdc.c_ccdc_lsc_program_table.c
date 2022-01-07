
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int dummy; } ;
typedef int dma_addr_t ;


 int ISPCCDC_LSC_TABLE_BASE ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_writel (int ,int ,int ,int ) ;
 int to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_lsc_program_table(struct isp_ccdc_device *ccdc,
       dma_addr_t addr)
{
 isp_reg_writel(to_isp_device(ccdc), addr,
         OMAP3_ISP_IOMEM_CCDC, ISPCCDC_LSC_TABLE_BASE);
}
