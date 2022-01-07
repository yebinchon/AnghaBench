
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclgevf_dev {int hw; } ;


 int HCLGEVF_VECTOR0_CMDQ_SRC_REG ;
 int hclgevf_write_dev (int *,int ,int ) ;

__attribute__((used)) static void hclgevf_clear_event_cause(struct hclgevf_dev *hdev, u32 regclr)
{
 hclgevf_write_dev(&hdev->hw, HCLGEVF_VECTOR0_CMDQ_SRC_REG, regclr);
}
