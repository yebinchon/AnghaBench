
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int map; int dev; } ;


 int RTL8366RB_SGCR ;
 int RTL8366RB_SGCR_EN_VLAN ;
 int dev_dbg (int ,char*,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rtl8366rb_enable_vlan(struct realtek_smi *smi, bool enable)
{
 dev_dbg(smi->dev, "%s VLAN\n", enable ? "enable" : "disable");
 return regmap_update_bits(smi->map,
      RTL8366RB_SGCR, RTL8366RB_SGCR_EN_VLAN,
      enable ? RTL8366RB_SGCR_EN_VLAN : 0);
}
