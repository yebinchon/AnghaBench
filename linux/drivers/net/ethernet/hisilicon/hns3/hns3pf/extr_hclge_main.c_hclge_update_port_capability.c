
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_mac {scalar_t__ media_type; scalar_t__ module_type; int support_autoneg; int advertising; int supported; } ;


 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 scalar_t__ HNAE3_MEDIA_TYPE_BACKPLANE ;
 scalar_t__ HNAE3_MEDIA_TYPE_COPPER ;
 scalar_t__ HNAE3_MODULE_TYPE_KR ;
 scalar_t__ HNAE3_MODULE_TYPE_TP ;
 scalar_t__ HNAE3_MODULE_TYPE_UNKNOWN ;
 int hclge_convert_setting_fec (struct hclge_mac*) ;
 int linkmode_clear_bit (int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int linkmode_set_bit (int ,int ) ;
 int linkmode_zero (int ) ;

__attribute__((used)) static void hclge_update_port_capability(struct hclge_mac *mac)
{

 hclge_convert_setting_fec(mac);




 if (mac->media_type == HNAE3_MEDIA_TYPE_BACKPLANE &&
     mac->module_type == HNAE3_MODULE_TYPE_UNKNOWN)
  mac->module_type = HNAE3_MODULE_TYPE_KR;
 else if (mac->media_type == HNAE3_MEDIA_TYPE_COPPER)
  mac->module_type = HNAE3_MODULE_TYPE_TP;

 if (mac->support_autoneg == 1) {
  linkmode_set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, mac->supported);
  linkmode_copy(mac->advertising, mac->supported);
 } else {
  linkmode_clear_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
       mac->supported);
  linkmode_zero(mac->advertising);
 }
}
