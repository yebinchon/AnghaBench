
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hclge_dev {int reset_type; TYPE_1__* pdev; int hw; int flr_state; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ HCLGE_FUN_RST_ING ;
 scalar_t__ HCLGE_FUN_RST_ING_B ;
 scalar_t__ HCLGE_GLOBAL_RESET_BIT ;
 scalar_t__ HCLGE_GLOBAL_RESET_REG ;
 scalar_t__ HCLGE_IMP_RESET_BIT ;
 scalar_t__ HCLGE_RESET_WAIT_CNT ;
 int HCLGE_RESET_WATI_MS ;
 int HNAE3_FLR_DONE ;




 int dev_err (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*,int const) ;
 scalar_t__ hclge_read_dev (int *,scalar_t__) ;
 scalar_t__ hnae3_get_bit (scalar_t__,scalar_t__) ;
 int msleep (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hclge_reset_wait(struct hclge_dev *hdev)
{


 u32 val, reg, reg_bit;
 u32 cnt = 0;

 switch (hdev->reset_type) {
 case 128:
  reg = HCLGE_GLOBAL_RESET_REG;
  reg_bit = HCLGE_IMP_RESET_BIT;
  break;
 case 129:
  reg = HCLGE_GLOBAL_RESET_REG;
  reg_bit = HCLGE_GLOBAL_RESET_BIT;
  break;
 case 130:
  reg = HCLGE_FUN_RST_ING;
  reg_bit = HCLGE_FUN_RST_ING_B;
  break;
 case 131:
  break;
 default:
  dev_err(&hdev->pdev->dev,
   "Wait for unsupported reset type: %d\n",
   hdev->reset_type);
  return -EINVAL;
 }

 if (hdev->reset_type == 131) {
  while (!test_bit(HNAE3_FLR_DONE, &hdev->flr_state) &&
         cnt++ < 200)
   msleep(100);

  if (!test_bit(HNAE3_FLR_DONE, &hdev->flr_state)) {
   dev_err(&hdev->pdev->dev,
    "flr wait timeout: %d\n", cnt);
   return -EBUSY;
  }

  return 0;
 }

 val = hclge_read_dev(&hdev->hw, reg);
 while (hnae3_get_bit(val, reg_bit) && cnt < 200) {
  msleep(100);
  val = hclge_read_dev(&hdev->hw, reg);
  cnt++;
 }

 if (cnt >= 200) {
  dev_warn(&hdev->pdev->dev,
    "Wait for reset timeout: %d\n", hdev->reset_type);
  return -EBUSY;
 }

 return 0;
}
