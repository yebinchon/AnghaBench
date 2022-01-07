
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


 int ETHTOOL_LINK_MODE_1000baseX_Full_BIT ;
 int ETHTOOL_LINK_MODE_FEC_NONE_BIT ;
 int ETHTOOL_LINK_MODE_FIBRE_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int HCLGE_SUPPORT_1G_BIT ;
 int hclge_convert_setting_cr (struct hclge_mac*,int) ;
 int hclge_convert_setting_fec (struct hclge_mac*) ;
 int hclge_convert_setting_lr (struct hclge_mac*,int) ;
 int hclge_convert_setting_sr (struct hclge_mac*,int) ;
 int linkmode_set_bit (int ,int ) ;

__attribute__((used)) static void hclge_parse_fiber_link_mode(struct hclge_dev *hdev,
     u8 speed_ability)
{
 struct hclge_mac *mac = &hdev->hw.mac;

 if (speed_ability & HCLGE_SUPPORT_1G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
     mac->supported);

 hclge_convert_setting_sr(mac, speed_ability);
 hclge_convert_setting_lr(mac, speed_ability);
 hclge_convert_setting_cr(mac, speed_ability);
 if (hdev->pdev->revision >= 0x21)
  hclge_convert_setting_fec(mac);

 linkmode_set_bit(ETHTOOL_LINK_MODE_FIBRE_BIT, mac->supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT, mac->supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, mac->supported);
}
