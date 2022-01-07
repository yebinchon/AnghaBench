
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; } ;


 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int dev_err (int ,char*) ;
 int mmDMA_MACRO_RAZWI_HBW_RD_VLD ;
 int mmDMA_MACRO_RAZWI_HBW_WT_VLD ;
 int mmDMA_MACRO_RAZWI_LBW_RD_VLD ;
 int mmDMA_MACRO_RAZWI_LBW_WT_VLD ;

__attribute__((used)) static void goya_print_razwi_info(struct hl_device *hdev)
{
 if (RREG32(mmDMA_MACRO_RAZWI_LBW_WT_VLD)) {
  dev_err(hdev->dev, "Illegal write to LBW\n");
  WREG32(mmDMA_MACRO_RAZWI_LBW_WT_VLD, 0);
 }

 if (RREG32(mmDMA_MACRO_RAZWI_LBW_RD_VLD)) {
  dev_err(hdev->dev, "Illegal read from LBW\n");
  WREG32(mmDMA_MACRO_RAZWI_LBW_RD_VLD, 0);
 }

 if (RREG32(mmDMA_MACRO_RAZWI_HBW_WT_VLD)) {
  dev_err(hdev->dev, "Illegal write to HBW\n");
  WREG32(mmDMA_MACRO_RAZWI_HBW_WT_VLD, 0);
 }

 if (RREG32(mmDMA_MACRO_RAZWI_HBW_RD_VLD)) {
  dev_err(hdev->dev, "Illegal read from HBW\n");
  WREG32(mmDMA_MACRO_RAZWI_HBW_RD_VLD, 0);
 }
}
