
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_config_mac_speed_dup_cmd {int mac_change_fec_en; int speed_dup; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HCLGE_CFG_DUPLEX_B ;
 int HCLGE_CFG_MAC_SPEED_CHANGE_EN_B ;
 int HCLGE_CFG_SPEED_M ;
 int HCLGE_CFG_SPEED_S ;
 int HCLGE_OPC_CONFIG_SPEED_DUP ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;
 int hnae3_set_field (int ,int ,int ,int) ;

__attribute__((used)) static int hclge_cfg_mac_speed_dup_hw(struct hclge_dev *hdev, int speed,
          u8 duplex)
{
 struct hclge_config_mac_speed_dup_cmd *req;
 struct hclge_desc desc;
 int ret;

 req = (struct hclge_config_mac_speed_dup_cmd *)desc.data;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_SPEED_DUP, 0);

 if (duplex)
  hnae3_set_bit(req->speed_dup, HCLGE_CFG_DUPLEX_B, 1);

 switch (speed) {
 case 132:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 6);
  break;
 case 134:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 7);
  break;
 case 131:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 0);
  break;
 case 133:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 1);
  break;
 case 130:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 2);
  break;
 case 129:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 3);
  break;
 case 128:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 4);
  break;
 case 135:
  hnae3_set_field(req->speed_dup, HCLGE_CFG_SPEED_M,
    HCLGE_CFG_SPEED_S, 5);
  break;
 default:
  dev_err(&hdev->pdev->dev, "invalid speed (%d)\n", speed);
  return -EINVAL;
 }

 hnae3_set_bit(req->mac_change_fec_en, HCLGE_CFG_MAC_SPEED_CHANGE_EN_B,
        1);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "mac speed/duplex config cmd failed %d.\n", ret);
  return ret;
 }

 return 0;
}
