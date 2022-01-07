
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int goya_stop_queue (struct hl_device*,int ,int ,int ) ;
 int mmMME_CMDQ_CP_STS ;
 int mmMME_CMDQ_GLBL_CFG1 ;
 int mmMME_CMDQ_GLBL_STS0 ;
 int mmMME_QM_CP_STS ;
 int mmMME_QM_GLBL_CFG1 ;
 int mmMME_QM_GLBL_STS0 ;
 int mmTPC0_CMDQ_CP_STS ;
 int mmTPC0_CMDQ_GLBL_CFG1 ;
 int mmTPC0_CMDQ_GLBL_STS0 ;
 int mmTPC0_QM_CP_STS ;
 int mmTPC0_QM_GLBL_CFG1 ;
 int mmTPC0_QM_GLBL_STS0 ;
 int mmTPC1_CMDQ_CP_STS ;
 int mmTPC1_CMDQ_GLBL_CFG1 ;
 int mmTPC1_CMDQ_GLBL_STS0 ;
 int mmTPC1_QM_CP_STS ;
 int mmTPC1_QM_GLBL_CFG1 ;
 int mmTPC1_QM_GLBL_STS0 ;
 int mmTPC2_CMDQ_CP_STS ;
 int mmTPC2_CMDQ_GLBL_CFG1 ;
 int mmTPC2_CMDQ_GLBL_STS0 ;
 int mmTPC2_QM_CP_STS ;
 int mmTPC2_QM_GLBL_CFG1 ;
 int mmTPC2_QM_GLBL_STS0 ;
 int mmTPC3_CMDQ_CP_STS ;
 int mmTPC3_CMDQ_GLBL_CFG1 ;
 int mmTPC3_CMDQ_GLBL_STS0 ;
 int mmTPC3_QM_CP_STS ;
 int mmTPC3_QM_GLBL_CFG1 ;
 int mmTPC3_QM_GLBL_STS0 ;
 int mmTPC4_CMDQ_CP_STS ;
 int mmTPC4_CMDQ_GLBL_CFG1 ;
 int mmTPC4_CMDQ_GLBL_STS0 ;
 int mmTPC4_QM_CP_STS ;
 int mmTPC4_QM_GLBL_CFG1 ;
 int mmTPC4_QM_GLBL_STS0 ;
 int mmTPC5_CMDQ_CP_STS ;
 int mmTPC5_CMDQ_GLBL_CFG1 ;
 int mmTPC5_CMDQ_GLBL_STS0 ;
 int mmTPC5_QM_CP_STS ;
 int mmTPC5_QM_GLBL_CFG1 ;
 int mmTPC5_QM_GLBL_STS0 ;
 int mmTPC6_CMDQ_CP_STS ;
 int mmTPC6_CMDQ_GLBL_CFG1 ;
 int mmTPC6_CMDQ_GLBL_STS0 ;
 int mmTPC6_QM_CP_STS ;
 int mmTPC6_QM_GLBL_CFG1 ;
 int mmTPC6_QM_GLBL_STS0 ;
 int mmTPC7_CMDQ_CP_STS ;
 int mmTPC7_CMDQ_GLBL_CFG1 ;
 int mmTPC7_CMDQ_GLBL_STS0 ;
 int mmTPC7_QM_CP_STS ;
 int mmTPC7_QM_GLBL_CFG1 ;
 int mmTPC7_QM_GLBL_STS0 ;

__attribute__((used)) static int goya_stop_internal_queues(struct hl_device *hdev)
{
 int rc, retval = 0;







 rc = goya_stop_queue(hdev,
   mmMME_QM_GLBL_CFG1,
   mmMME_QM_CP_STS,
   mmMME_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop MME QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmMME_CMDQ_GLBL_CFG1,
   mmMME_CMDQ_CP_STS,
   mmMME_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop MME CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC0_QM_GLBL_CFG1,
   mmTPC0_QM_CP_STS,
   mmTPC0_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 0 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC0_CMDQ_GLBL_CFG1,
   mmTPC0_CMDQ_CP_STS,
   mmTPC0_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 0 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC1_QM_GLBL_CFG1,
   mmTPC1_QM_CP_STS,
   mmTPC1_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 1 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC1_CMDQ_GLBL_CFG1,
   mmTPC1_CMDQ_CP_STS,
   mmTPC1_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 1 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC2_QM_GLBL_CFG1,
   mmTPC2_QM_CP_STS,
   mmTPC2_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 2 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC2_CMDQ_GLBL_CFG1,
   mmTPC2_CMDQ_CP_STS,
   mmTPC2_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 2 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC3_QM_GLBL_CFG1,
   mmTPC3_QM_CP_STS,
   mmTPC3_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 3 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC3_CMDQ_GLBL_CFG1,
   mmTPC3_CMDQ_CP_STS,
   mmTPC3_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 3 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC4_QM_GLBL_CFG1,
   mmTPC4_QM_CP_STS,
   mmTPC4_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 4 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC4_CMDQ_GLBL_CFG1,
   mmTPC4_CMDQ_CP_STS,
   mmTPC4_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 4 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC5_QM_GLBL_CFG1,
   mmTPC5_QM_CP_STS,
   mmTPC5_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 5 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC5_CMDQ_GLBL_CFG1,
   mmTPC5_CMDQ_CP_STS,
   mmTPC5_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 5 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC6_QM_GLBL_CFG1,
   mmTPC6_QM_CP_STS,
   mmTPC6_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 6 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC6_CMDQ_GLBL_CFG1,
   mmTPC6_CMDQ_CP_STS,
   mmTPC6_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 6 CMDQ\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC7_QM_GLBL_CFG1,
   mmTPC7_QM_CP_STS,
   mmTPC7_QM_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 7 QMAN\n");
  retval = -EIO;
 }

 rc = goya_stop_queue(hdev,
   mmTPC7_CMDQ_GLBL_CFG1,
   mmTPC7_CMDQ_CP_STS,
   mmTPC7_CMDQ_GLBL_STS0);

 if (rc) {
  dev_err(hdev->dev, "failed to stop TPC 7 CMDQ\n");
  retval = -EIO;
 }

 return retval;
}
