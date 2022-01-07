
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int phy_interface; int dev; int gop_id; struct mvpp2* priv; } ;
struct mvpp2 {int sysctrl_base; } ;


 int EINVAL ;
 int GENCONF_PORT_CTRL0 ;
 int GENCONF_PORT_CTRL0_CLK_DIV_PHASE_CLR ;
 int GENCONF_PORT_CTRL1 ;
 int GENCONF_PORT_CTRL1_EN (int ) ;
 int GENCONF_PORT_CTRL1_RESET (int ) ;
 int GENCONF_SOFT_RESET1 ;
 int GENCONF_SOFT_RESET1_GOP ;
 int mvpp22_gop_init_10gkr (struct mvpp2_port*) ;
 int mvpp22_gop_init_rgmii (struct mvpp2_port*) ;
 int mvpp22_gop_init_sgmii (struct mvpp2_port*) ;
 int netdev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mvpp22_gop_init(struct mvpp2_port *port)
{
 struct mvpp2 *priv = port->priv;
 u32 val;

 if (!priv->sysctrl_base)
  return 0;

 switch (port->phy_interface) {
 case 132:
 case 131:
 case 130:
 case 129:
  if (port->gop_id == 0)
   goto invalid_conf;
  mvpp22_gop_init_rgmii(port);
  break;
 case 128:
 case 135:
 case 133:
  mvpp22_gop_init_sgmii(port);
  break;
 case 134:
  if (port->gop_id != 0)
   goto invalid_conf;
  mvpp22_gop_init_10gkr(port);
  break;
 default:
  goto unsupported_conf;
 }

 regmap_read(priv->sysctrl_base, GENCONF_PORT_CTRL1, &val);
 val |= GENCONF_PORT_CTRL1_RESET(port->gop_id) |
        GENCONF_PORT_CTRL1_EN(port->gop_id);
 regmap_write(priv->sysctrl_base, GENCONF_PORT_CTRL1, val);

 regmap_read(priv->sysctrl_base, GENCONF_PORT_CTRL0, &val);
 val |= GENCONF_PORT_CTRL0_CLK_DIV_PHASE_CLR;
 regmap_write(priv->sysctrl_base, GENCONF_PORT_CTRL0, val);

 regmap_read(priv->sysctrl_base, GENCONF_SOFT_RESET1, &val);
 val |= GENCONF_SOFT_RESET1_GOP;
 regmap_write(priv->sysctrl_base, GENCONF_SOFT_RESET1, val);

unsupported_conf:
 return 0;

invalid_conf:
 netdev_err(port->dev, "Invalid port configuration\n");
 return -EINVAL;
}
