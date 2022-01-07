
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int cpu_port; int map; int dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct realtek_smi* priv; } ;


 int BIT (int) ;
 int RTL8366RB_MAC_FORCE_CTRL_REG ;
 int RTL8366RB_PAACR2 ;
 int RTL8366RB_PAACR_CPU_PORT ;
 int RTL8366RB_PECR ;
 int dev_info (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void rtl8366rb_adjust_link(struct dsa_switch *ds, int port,
      struct phy_device *phydev)
{
 struct realtek_smi *smi = ds->priv;
 int ret;

 if (port != smi->cpu_port)
  return;

 dev_info(smi->dev, "adjust link on CPU port (%d)\n", port);


 ret = regmap_update_bits(smi->map, RTL8366RB_MAC_FORCE_CTRL_REG,
     BIT(port), BIT(port));
 if (ret)
  return;

 ret = regmap_update_bits(smi->map, RTL8366RB_PAACR2,
     0xFF00U,
     RTL8366RB_PAACR_CPU_PORT << 8);
 if (ret)
  return;


 ret = regmap_update_bits(smi->map, RTL8366RB_PECR, BIT(port),
     0);
 if (ret)
  return;
}
