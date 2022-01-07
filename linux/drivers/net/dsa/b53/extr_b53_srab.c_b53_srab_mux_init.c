
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct b53_srab_priv {int mux_config; struct b53_srab_port_priv* port_intrs; } ;
struct b53_srab_port_priv {scalar_t__ mode; } ;
struct b53_device {TYPE_1__* pdata; struct b53_srab_priv* priv; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 int B53_MUX_CONFIG_P5 ;
 scalar_t__ BCM58XX_DEVICE_ID ;
 scalar_t__ IS_ERR (int) ;


 int MUX_CONFIG_MASK ;



 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 scalar_t__ PHY_INTERFACE_MODE_INTERNAL ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 scalar_t__ PHY_INTERFACE_MODE_NA ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int b53_serdes_init (struct b53_device*,unsigned int) ;
 int dev_info (int *,char*,unsigned int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int) ;
 int phy_modes (scalar_t__) ;
 struct b53_device* platform_get_drvdata (struct platform_device*) ;
 int readl (int) ;

__attribute__((used)) static void b53_srab_mux_init(struct platform_device *pdev)
{
 struct b53_device *dev = platform_get_drvdata(pdev);
 struct b53_srab_priv *priv = dev->priv;
 struct b53_srab_port_priv *p;
 unsigned int port;
 u32 reg, off = 0;
 int ret;

 if (dev->pdata && dev->pdata->chip_id != BCM58XX_DEVICE_ID)
  return;

 priv->mux_config = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(priv->mux_config))
  return;




 for (port = 5; port > 3; port--, off += 4) {
  p = &priv->port_intrs[port];

  reg = readl(priv->mux_config + B53_MUX_CONFIG_P5 + off);
  switch (reg & MUX_CONFIG_MASK) {
  case 128:
   p->mode = PHY_INTERFACE_MODE_SGMII;
   ret = b53_serdes_init(dev, port);
   if (ret)
    continue;
   break;
  case 130:
   p->mode = PHY_INTERFACE_MODE_MII;
   break;
  case 132:
   p->mode = PHY_INTERFACE_MODE_GMII;
   break;
  case 129:
   p->mode = PHY_INTERFACE_MODE_RGMII;
   break;
  case 131:
   p->mode = PHY_INTERFACE_MODE_INTERNAL;
   break;
  default:
   p->mode = PHY_INTERFACE_MODE_NA;
   break;
  }

  if (p->mode != PHY_INTERFACE_MODE_NA)
   dev_info(&pdev->dev, "Port %d mode: %s\n",
     port, phy_modes(p->mode));
 }
}
