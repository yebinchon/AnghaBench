
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_csiphy {int phy_regs; int cfg_regs; int num_data_lanes; int * csi2; int mutex; struct isp_device* isp; } ;
struct isp_device {scalar_t__ revision; int isp_csi2c; int isp_csi2a; struct isp_csiphy isp_csiphy2; struct isp_csiphy isp_csiphy1; } ;


 int ISP_CSIPHY1_NUM_DATA_LANES ;
 int ISP_CSIPHY2_NUM_DATA_LANES ;
 scalar_t__ ISP_REVISION_15_0 ;
 int OMAP3_ISP_IOMEM_CSI2A_REGS1 ;
 int OMAP3_ISP_IOMEM_CSI2C_REGS1 ;
 int OMAP3_ISP_IOMEM_CSIPHY1 ;
 int OMAP3_ISP_IOMEM_CSIPHY2 ;
 int mutex_init (int *) ;

int omap3isp_csiphy_init(struct isp_device *isp)
{
 struct isp_csiphy *phy1 = &isp->isp_csiphy1;
 struct isp_csiphy *phy2 = &isp->isp_csiphy2;

 phy2->isp = isp;
 phy2->csi2 = &isp->isp_csi2a;
 phy2->num_data_lanes = ISP_CSIPHY2_NUM_DATA_LANES;
 phy2->cfg_regs = OMAP3_ISP_IOMEM_CSI2A_REGS1;
 phy2->phy_regs = OMAP3_ISP_IOMEM_CSIPHY2;
 mutex_init(&phy2->mutex);

 phy1->isp = isp;
 mutex_init(&phy1->mutex);

 if (isp->revision == ISP_REVISION_15_0) {
  phy1->csi2 = &isp->isp_csi2c;
  phy1->num_data_lanes = ISP_CSIPHY1_NUM_DATA_LANES;
  phy1->cfg_regs = OMAP3_ISP_IOMEM_CSI2C_REGS1;
  phy1->phy_regs = OMAP3_ISP_IOMEM_CSIPHY1;
 }

 return 0;
}
