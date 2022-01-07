
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int gop_id; struct mvpp2* priv; } ;
struct mvpp2 {int sysctrl_base; } ;


 int GENCONF_CTRL0 ;
 int GENCONF_CTRL0_PORT0_RGMII ;
 int GENCONF_CTRL0_PORT1_RGMII ;
 int GENCONF_CTRL0_PORT1_RGMII_MII ;
 int GENCONF_PORT_CTRL0 ;
 int GENCONF_PORT_CTRL0_BUS_WIDTH_SELECT ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void mvpp22_gop_init_rgmii(struct mvpp2_port *port)
{
 struct mvpp2 *priv = port->priv;
 u32 val;

 regmap_read(priv->sysctrl_base, GENCONF_PORT_CTRL0, &val);
 val |= GENCONF_PORT_CTRL0_BUS_WIDTH_SELECT;
 regmap_write(priv->sysctrl_base, GENCONF_PORT_CTRL0, val);

 regmap_read(priv->sysctrl_base, GENCONF_CTRL0, &val);
 if (port->gop_id == 2)
  val |= GENCONF_CTRL0_PORT0_RGMII | GENCONF_CTRL0_PORT1_RGMII;
 else if (port->gop_id == 3)
  val |= GENCONF_CTRL0_PORT1_RGMII_MII;
 regmap_write(priv->sysctrl_base, GENCONF_CTRL0, val);
}
