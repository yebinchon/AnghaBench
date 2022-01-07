
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int DMA_QM_0_GLBL_CFG1_DMA_STOP_SHIFT ;
 int DMA_QM_1_GLBL_CFG1_DMA_STOP_SHIFT ;
 int DMA_QM_2_GLBL_CFG1_DMA_STOP_SHIFT ;
 int DMA_QM_3_GLBL_CFG1_DMA_STOP_SHIFT ;
 int DMA_QM_4_GLBL_CFG1_DMA_STOP_SHIFT ;
 int WREG32 (int ,int) ;
 int mmDMA_QM_0_GLBL_CFG1 ;
 int mmDMA_QM_1_GLBL_CFG1 ;
 int mmDMA_QM_2_GLBL_CFG1 ;
 int mmDMA_QM_3_GLBL_CFG1 ;
 int mmDMA_QM_4_GLBL_CFG1 ;

__attribute__((used)) static void goya_dma_stall(struct hl_device *hdev)
{
 WREG32(mmDMA_QM_0_GLBL_CFG1, 1 << DMA_QM_0_GLBL_CFG1_DMA_STOP_SHIFT);
 WREG32(mmDMA_QM_1_GLBL_CFG1, 1 << DMA_QM_1_GLBL_CFG1_DMA_STOP_SHIFT);
 WREG32(mmDMA_QM_2_GLBL_CFG1, 1 << DMA_QM_2_GLBL_CFG1_DMA_STOP_SHIFT);
 WREG32(mmDMA_QM_3_GLBL_CFG1, 1 << DMA_QM_3_GLBL_CFG1_DMA_STOP_SHIFT);
 WREG32(mmDMA_QM_4_GLBL_CFG1, 1 << DMA_QM_4_GLBL_CFG1_DMA_STOP_SHIFT);
}
