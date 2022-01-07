
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hclge_dev {int reset_type; int misc_vector; int hw; TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;


 scalar_t__ BIT (int ) ;
 int HCLGE_MISC_RESET_STS_REG ;
 int HCLGE_VECTOR0_GLOBALRESET_INT_B ;
 int HCLGE_VECTOR0_IMPRESET_INT_B ;


 int hclge_enable_vector (int *,int) ;
 int hclge_write_dev (int *,int ,scalar_t__) ;

__attribute__((used)) static void hclge_clear_reset_cause(struct hclge_dev *hdev)
{
 u32 clearval = 0;

 switch (hdev->reset_type) {
 case 128:
  clearval = BIT(HCLGE_VECTOR0_IMPRESET_INT_B);
  break;
 case 129:
  clearval = BIT(HCLGE_VECTOR0_GLOBALRESET_INT_B);
  break;
 default:
  break;
 }

 if (!clearval)
  return;




 if (hdev->pdev->revision == 0x20)
  hclge_write_dev(&hdev->hw, HCLGE_MISC_RESET_STS_REG,
    clearval);

 hclge_enable_vector(&hdev->misc_vector, 1);
}
