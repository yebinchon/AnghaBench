
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int mmDMA_QM_0_GLBL_CFG0 ;
 int mmDMA_QM_1_GLBL_CFG0 ;
 int mmDMA_QM_2_GLBL_CFG0 ;
 int mmDMA_QM_3_GLBL_CFG0 ;
 int mmDMA_QM_4_GLBL_CFG0 ;

__attribute__((used)) static void goya_disable_external_queues(struct hl_device *hdev)
{
 WREG32(mmDMA_QM_0_GLBL_CFG0, 0);
 WREG32(mmDMA_QM_1_GLBL_CFG0, 0);
 WREG32(mmDMA_QM_2_GLBL_CFG0, 0);
 WREG32(mmDMA_QM_3_GLBL_CFG0, 0);
 WREG32(mmDMA_QM_4_GLBL_CFG0, 0);
}
