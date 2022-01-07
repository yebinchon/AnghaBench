
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dev; } ;


 int GOYA_ASYNC_EVENT_ID_PI_UPDATE ;
 int WREG32 (int,int) ;
 int dev_err (int ,char*,int) ;
 int mmCPU_IF_PF_PQ_PI ;
 int mmDMA_QM_0_PQ_PI ;
 int mmDMA_QM_1_PQ_PI ;
 int mmDMA_QM_2_PQ_PI ;
 int mmDMA_QM_3_PQ_PI ;
 int mmDMA_QM_4_PQ_PI ;
 int mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ;
 int mmMME_QM_PQ_PI ;
 int mmTPC0_QM_PQ_PI ;
 int mmTPC1_QM_PQ_PI ;
 int mmTPC2_QM_PQ_PI ;
 int mmTPC3_QM_PQ_PI ;
 int mmTPC4_QM_PQ_PI ;
 int mmTPC5_QM_PQ_PI ;
 int mmTPC6_QM_PQ_PI ;
 int mmTPC7_QM_PQ_PI ;

void goya_ring_doorbell(struct hl_device *hdev, u32 hw_queue_id, u32 pi)
{
 u32 db_reg_offset, db_value;

 switch (hw_queue_id) {
 case 141:
  db_reg_offset = mmDMA_QM_0_PQ_PI;
  break;

 case 140:
  db_reg_offset = mmDMA_QM_1_PQ_PI;
  break;

 case 139:
  db_reg_offset = mmDMA_QM_2_PQ_PI;
  break;

 case 138:
  db_reg_offset = mmDMA_QM_3_PQ_PI;
  break;

 case 137:
  db_reg_offset = mmDMA_QM_4_PQ_PI;
  break;

 case 142:
  db_reg_offset = mmCPU_IF_PF_PQ_PI;
  break;

 case 136:
  db_reg_offset = mmMME_QM_PQ_PI;
  break;

 case 135:
  db_reg_offset = mmTPC0_QM_PQ_PI;
  break;

 case 134:
  db_reg_offset = mmTPC1_QM_PQ_PI;
  break;

 case 133:
  db_reg_offset = mmTPC2_QM_PQ_PI;
  break;

 case 132:
  db_reg_offset = mmTPC3_QM_PQ_PI;
  break;

 case 131:
  db_reg_offset = mmTPC4_QM_PQ_PI;
  break;

 case 130:
  db_reg_offset = mmTPC5_QM_PQ_PI;
  break;

 case 129:
  db_reg_offset = mmTPC6_QM_PQ_PI;
  break;

 case 128:
  db_reg_offset = mmTPC7_QM_PQ_PI;
  break;

 default:

  dev_err(hdev->dev, "H/W queue %d is invalid. Can't set pi\n",
   hw_queue_id);
  return;
 }

 db_value = pi;


 WREG32(db_reg_offset, db_value);

 if (hw_queue_id == 142)
  WREG32(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
    GOYA_ASYNC_EVENT_ID_PI_UPDATE);
}
