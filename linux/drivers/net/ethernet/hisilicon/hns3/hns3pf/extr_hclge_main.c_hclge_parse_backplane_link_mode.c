
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hclge_mac {int supported; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int revision; } ;


 int ETHTOOL_LINK_MODE_Backplane_BIT ;
 int ETHTOOL_LINK_MODE_FEC_NONE_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int hclge_convert_setting_fec (struct hclge_mac*) ;
 int hclge_convert_setting_kr (struct hclge_mac*,int ) ;
 int linkmode_set_bit (int ,int ) ;

__attribute__((used)) static void hclge_parse_backplane_link_mode(struct hclge_dev *hdev,
         u8 speed_ability)
{
 struct hclge_mac *mac = &hdev->hw.mac;

 hclge_convert_setting_kr(mac, speed_ability);
 if (hdev->pdev->revision >= 0x21)
  hclge_convert_setting_fec(mac);
 linkmode_set_bit(ETHTOOL_LINK_MODE_Backplane_BIT, mac->supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT, mac->supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, mac->supported);
}
