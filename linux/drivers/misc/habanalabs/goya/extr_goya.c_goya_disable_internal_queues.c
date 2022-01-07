
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int mmMME_CMDQ_GLBL_CFG0 ;
 int mmMME_QM_GLBL_CFG0 ;
 int mmTPC0_CMDQ_GLBL_CFG0 ;
 int mmTPC0_QM_GLBL_CFG0 ;
 int mmTPC1_CMDQ_GLBL_CFG0 ;
 int mmTPC1_QM_GLBL_CFG0 ;
 int mmTPC2_CMDQ_GLBL_CFG0 ;
 int mmTPC2_QM_GLBL_CFG0 ;
 int mmTPC3_CMDQ_GLBL_CFG0 ;
 int mmTPC3_QM_GLBL_CFG0 ;
 int mmTPC4_CMDQ_GLBL_CFG0 ;
 int mmTPC4_QM_GLBL_CFG0 ;
 int mmTPC5_CMDQ_GLBL_CFG0 ;
 int mmTPC5_QM_GLBL_CFG0 ;
 int mmTPC6_CMDQ_GLBL_CFG0 ;
 int mmTPC6_QM_GLBL_CFG0 ;
 int mmTPC7_CMDQ_GLBL_CFG0 ;
 int mmTPC7_QM_GLBL_CFG0 ;

__attribute__((used)) static void goya_disable_internal_queues(struct hl_device *hdev)
{
 WREG32(mmMME_QM_GLBL_CFG0, 0);
 WREG32(mmMME_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC0_QM_GLBL_CFG0, 0);
 WREG32(mmTPC0_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC1_QM_GLBL_CFG0, 0);
 WREG32(mmTPC1_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC2_QM_GLBL_CFG0, 0);
 WREG32(mmTPC2_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC3_QM_GLBL_CFG0, 0);
 WREG32(mmTPC3_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC4_QM_GLBL_CFG0, 0);
 WREG32(mmTPC4_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC5_QM_GLBL_CFG0, 0);
 WREG32(mmTPC5_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC6_QM_GLBL_CFG0, 0);
 WREG32(mmTPC6_CMDQ_GLBL_CFG0, 0);

 WREG32(mmTPC7_QM_GLBL_CFG0, 0);
 WREG32(mmTPC7_CMDQ_GLBL_CFG0, 0);
}
