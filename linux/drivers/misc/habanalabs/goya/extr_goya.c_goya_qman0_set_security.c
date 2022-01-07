
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_MMU ;
 int QMAN_DMA_FULLY_TRUSTED ;
 int QMAN_DMA_PARTLY_TRUSTED ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmDMA_QM_0_GLBL_PROT ;

__attribute__((used)) static void goya_qman0_set_security(struct hl_device *hdev, bool secure)
{
 struct goya_device *goya = hdev->asic_specific;

 if (!(goya->hw_cap_initialized & HW_CAP_MMU))
  return;

 if (secure)
  WREG32(mmDMA_QM_0_GLBL_PROT, QMAN_DMA_FULLY_TRUSTED);
 else
  WREG32(mmDMA_QM_0_GLBL_PROT, QMAN_DMA_PARTLY_TRUSTED);

 RREG32(mmDMA_QM_0_GLBL_PROT);
}
