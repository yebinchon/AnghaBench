
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int map; int dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct realtek_smi* priv; } ;


 int BIT (int) ;
 int RTL8366RB_PECR ;
 int dev_dbg (int ,char*,int) ;
 int rb8366rb_set_port_led (struct realtek_smi*,int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int
rtl8366rb_port_enable(struct dsa_switch *ds, int port,
        struct phy_device *phy)
{
 struct realtek_smi *smi = ds->priv;
 int ret;

 dev_dbg(smi->dev, "enable port %d\n", port);
 ret = regmap_update_bits(smi->map, RTL8366RB_PECR, BIT(port),
     0);
 if (ret)
  return ret;

 rb8366rb_set_port_led(smi, port, 1);
 return 0;
}
