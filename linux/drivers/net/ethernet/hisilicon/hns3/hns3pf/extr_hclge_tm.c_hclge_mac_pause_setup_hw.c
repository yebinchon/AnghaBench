
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fc_mode; } ;
struct hclge_dev {TYPE_1__ tm_info; } ;







 int hclge_mac_pause_en_cfg (struct hclge_dev*,int,int) ;

__attribute__((used)) static int hclge_mac_pause_setup_hw(struct hclge_dev *hdev)
{
 bool tx_en, rx_en;

 switch (hdev->tm_info.fc_mode) {
 case 131:
  tx_en = 0;
  rx_en = 0;
  break;
 case 129:
  tx_en = 0;
  rx_en = 1;
  break;
 case 128:
  tx_en = 1;
  rx_en = 0;
  break;
 case 132:
  tx_en = 1;
  rx_en = 1;
  break;
 case 130:
  tx_en = 0;
  rx_en = 0;
  break;
 default:
  tx_en = 1;
  rx_en = 1;
 }

 return hclge_mac_pause_en_cfg(hdev, tx_en, rx_en);
}
