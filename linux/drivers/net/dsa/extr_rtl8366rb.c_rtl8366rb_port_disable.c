
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int map; int dev; } ;
struct dsa_switch {struct realtek_smi* priv; } ;


 int BIT (int) ;
 int RTL8366RB_PECR ;
 int dev_dbg (int ,char*,int) ;
 int rb8366rb_set_port_led (struct realtek_smi*,int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void
rtl8366rb_port_disable(struct dsa_switch *ds, int port)
{
 struct realtek_smi *smi = ds->priv;
 int ret;

 dev_dbg(smi->dev, "disable port %d\n", port);
 ret = regmap_update_bits(smi->map, RTL8366RB_PECR, BIT(port),
     BIT(port));
 if (ret)
  return;

 rb8366rb_set_port_led(smi, port, 0);
}
