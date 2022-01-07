
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int reset_type; } ;




 int hclge_set_all_vf_rst (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_reset_prepare_down(struct hclge_dev *hdev)
{
 int ret = 0;

 switch (hdev->reset_type) {
 case 128:

 case 129:
  ret = hclge_set_all_vf_rst(hdev, 1);
  break;
 default:
  break;
 }

 return ret;
}
