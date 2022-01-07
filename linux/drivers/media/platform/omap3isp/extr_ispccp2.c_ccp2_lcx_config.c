
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_interface_lcx_config {int format; int crc; int data_start; int data_size; } ;
struct isp_device {scalar_t__ revision; } ;
struct isp_ccp2_device {int dummy; } ;


 int BIT_SET (int,int ,int ,int) ;
 int ISPCCP2_LC01_IRQENABLE ;
 int ISPCCP2_LC01_IRQSTATUS ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_CRC_IRQ ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_FIFO_OVF_IRQ ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_FSC_IRQ ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_FSP_IRQ ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_FW_IRQ ;
 int ISPCCP2_LC01_IRQSTATUS_LC0_SSC_IRQ ;
 int ISPCCP2_LCx_CTRL (int ) ;
 int ISPCCP2_LCx_CTRL_CRC_MASK ;
 int ISPCCP2_LCx_CTRL_CRC_SHIFT ;
 int ISPCCP2_LCx_CTRL_CRC_SHIFT_15_0 ;
 int ISPCCP2_LCx_CTRL_FORMAT_MASK ;
 int ISPCCP2_LCx_CTRL_FORMAT_MASK_15_0 ;
 int ISPCCP2_LCx_CTRL_FORMAT_RAW10_VP ;
 int ISPCCP2_LCx_CTRL_FORMAT_RAW8_DPCM10_VP ;
 int ISPCCP2_LCx_CTRL_FORMAT_SHIFT ;
 int ISPCCP2_LCx_CTRL_FORMAT_SHIFT_15_0 ;
 int ISPCCP2_LCx_CTRL_REGION_EN ;
 int ISPCCP2_LCx_DAT_SHIFT ;
 int ISPCCP2_LCx_DAT_SIZE (int ) ;
 int ISPCCP2_LCx_DAT_START (int ) ;
 scalar_t__ ISP_REVISION_15_0 ;


 int OMAP3_ISP_IOMEM_CCP2 ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;

__attribute__((used)) static void ccp2_lcx_config(struct isp_ccp2_device *ccp2,
       struct isp_interface_lcx_config *config)
{
 struct isp_device *isp = to_isp_device(ccp2);
 u32 val, format;

 switch (config->format) {
 case 128:
  format = ISPCCP2_LCx_CTRL_FORMAT_RAW8_DPCM10_VP;
  break;
 case 129:
 default:
  format = ISPCCP2_LCx_CTRL_FORMAT_RAW10_VP;
  break;
 }

 val = isp_reg_readl(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCx_CTRL(0))
       | (ISPCCP2_LCx_CTRL_REGION_EN);

 if (isp->revision == ISP_REVISION_15_0) {

  BIT_SET(val, ISPCCP2_LCx_CTRL_CRC_SHIFT_15_0,
   ISPCCP2_LCx_CTRL_CRC_MASK,
   config->crc);

  BIT_SET(val, ISPCCP2_LCx_CTRL_FORMAT_SHIFT_15_0,
   ISPCCP2_LCx_CTRL_FORMAT_MASK_15_0, format);
 } else {
  BIT_SET(val, ISPCCP2_LCx_CTRL_CRC_SHIFT,
   ISPCCP2_LCx_CTRL_CRC_MASK,
   config->crc);

  BIT_SET(val, ISPCCP2_LCx_CTRL_FORMAT_SHIFT,
   ISPCCP2_LCx_CTRL_FORMAT_MASK, format);
 }
 isp_reg_writel(isp, val, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCx_CTRL(0));


 isp_reg_writel(isp, config->data_start << ISPCCP2_LCx_DAT_SHIFT,
         OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCx_DAT_START(0));


 isp_reg_writel(isp, config->data_size << ISPCCP2_LCx_DAT_SHIFT,
         OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCx_DAT_SIZE(0));


 val = ISPCCP2_LC01_IRQSTATUS_LC0_FIFO_OVF_IRQ |
       ISPCCP2_LC01_IRQSTATUS_LC0_CRC_IRQ |
       ISPCCP2_LC01_IRQSTATUS_LC0_FSP_IRQ |
       ISPCCP2_LC01_IRQSTATUS_LC0_FW_IRQ |
       ISPCCP2_LC01_IRQSTATUS_LC0_FSC_IRQ |
       ISPCCP2_LC01_IRQSTATUS_LC0_SSC_IRQ;

 isp_reg_writel(isp, val, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LC01_IRQSTATUS);
 isp_reg_set(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LC01_IRQENABLE, val);
}
