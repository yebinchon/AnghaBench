
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int reset_type; } ;






 int hclge_reset_handshake (struct hclge_dev*,int) ;
 int hclge_set_all_vf_rst (struct hclge_dev*,int) ;
 int hclge_set_rst_done (struct hclge_dev*) ;

__attribute__((used)) static int hclge_reset_prepare_up(struct hclge_dev *hdev)
{
 int ret = 0;

 switch (hdev->reset_type) {
 case 130:

 case 131:
  ret = hclge_set_all_vf_rst(hdev, 0);
  break;
 case 129:

 case 128:
  ret = hclge_set_rst_done(hdev);
  break;
 default:
  break;
 }


 hclge_reset_handshake(hdev, 0);

 return ret;
}
