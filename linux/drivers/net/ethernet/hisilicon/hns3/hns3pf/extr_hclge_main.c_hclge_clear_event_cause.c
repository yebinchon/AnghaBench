
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_dev {int hw; } ;


 int HCLGE_MISC_RESET_STS_REG ;
 int HCLGE_VECTOR0_CMDQ_SRC_REG ;


 int hclge_write_dev (int *,int ,int) ;

__attribute__((used)) static void hclge_clear_event_cause(struct hclge_dev *hdev, u32 event_type,
        u32 regclr)
{
 switch (event_type) {
 case 128:
  hclge_write_dev(&hdev->hw, HCLGE_MISC_RESET_STS_REG, regclr);
  break;
 case 129:
  hclge_write_dev(&hdev->hw, HCLGE_VECTOR0_CMDQ_SRC_REG, regclr);
  break;
 default:
  break;
 }
}
