
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_knic_private_info {int num_tqps; } ;
struct hnae3_handle {int dummy; } ;
struct TYPE_4__ {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {TYPE_2__ nic; struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;
struct TYPE_3__ {int revision; int dev; } ;


 int BIT (int ) ;
 int ENOTSUPP ;
 int HCLGE_SWITCH_ALW_LPBK_B ;
 int HCLGE_SWITCH_ALW_LPBK_MASK ;




 int PF_VPORT_ID ;
 int dev_err (int *,char*,int) ;
 int hclge_config_switch_param (struct hclge_dev*,int ,int ,int ) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_app_loopback (struct hclge_dev*,int) ;
 int hclge_set_phy_loopback (struct hclge_dev*,int) ;
 int hclge_set_serdes_loopback (struct hclge_dev*,int,int) ;
 int hclge_tqp_enable (struct hclge_dev*,int,int ,int) ;

__attribute__((used)) static int hclge_set_loopback(struct hnae3_handle *handle,
         enum hnae3_loop loop_mode, bool en)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hnae3_knic_private_info *kinfo;
 struct hclge_dev *hdev = vport->back;
 int i, ret;






 if (hdev->pdev->revision >= 0x21) {
  u8 switch_param = en ? 0 : BIT(HCLGE_SWITCH_ALW_LPBK_B);

  ret = hclge_config_switch_param(hdev, PF_VPORT_ID, switch_param,
      HCLGE_SWITCH_ALW_LPBK_MASK);
  if (ret)
   return ret;
 }

 switch (loop_mode) {
 case 131:
  ret = hclge_set_app_loopback(hdev, en);
  break;
 case 128:
 case 130:
  ret = hclge_set_serdes_loopback(hdev, en, loop_mode);
  break;
 case 129:
  ret = hclge_set_phy_loopback(hdev, en);
  break;
 default:
  ret = -ENOTSUPP;
  dev_err(&hdev->pdev->dev,
   "loop_mode %d is not supported\n", loop_mode);
  break;
 }

 if (ret)
  return ret;

 kinfo = &vport->nic.kinfo;
 for (i = 0; i < kinfo->num_tqps; i++) {
  ret = hclge_tqp_enable(hdev, i, 0, en);
  if (ret)
   return ret;
 }

 return 0;
}
