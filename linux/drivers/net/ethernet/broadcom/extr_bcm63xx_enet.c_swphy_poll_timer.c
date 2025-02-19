
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct bcm_enet_priv {unsigned int num_ports; int* sw_port_link; TYPE_2__ swphy_poll; TYPE_1__* pdev; struct bcm63xx_enetsw_port* used_ports; } ;
struct bcm63xx_enetsw_port {int name; int phy_id; scalar_t__ bypass_link; int used; } ;
struct TYPE_3__ {int dev; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_FULL ;
 int BMSR_ESTATEN ;
 int BMSR_LSTATUS ;
 int ENETSW_IMPOV_1000_MASK ;
 int ENETSW_IMPOV_100_MASK ;
 int ENETSW_IMPOV_FDX_MASK ;
 int ENETSW_PORTOV_ENABLE_MASK ;
 int ENETSW_PORTOV_LINKUP_MASK ;
 int ENETSW_PORTOV_REG (unsigned int) ;
 int ENETSW_PTCTRL_REG (unsigned int) ;
 int ENETSW_PTCTRL_RXDIS_MASK ;
 int ENETSW_PTCTRL_TXDIS_MASK ;
 scalar_t__ HZ ;
 int LPA_1000FULL ;
 int LPA_1000HALF ;
 int MII_ADVERTISE ;
 int MII_BMSR ;
 int MII_CTRL1000 ;
 int MII_LPA ;
 int MII_STAT1000 ;
 int add_timer (TYPE_2__*) ;
 int bcm_enet_port_is_rgmii (unsigned int) ;
 int bcmenet_sw_mdio_read (struct bcm_enet_priv*,int,int ,int ) ;
 int dev_info (int *,char*,int ,...) ;
 int enetsw_writeb (struct bcm_enet_priv*,int,int ) ;
 struct bcm_enet_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mii_nway_result (int) ;
 struct bcm_enet_priv* priv ;
 int swphy_poll ;

__attribute__((used)) static void swphy_poll_timer(struct timer_list *t)
{
 struct bcm_enet_priv *priv = from_timer(priv, t, swphy_poll);
 unsigned int i;

 for (i = 0; i < priv->num_ports; i++) {
  struct bcm63xx_enetsw_port *port;
  int val, j, up, advertise, lpa, speed, duplex, media;
  int external_phy = bcm_enet_port_is_rgmii(i);
  u8 override;

  port = &priv->used_ports[i];
  if (!port->used)
   continue;

  if (port->bypass_link)
   continue;


  for (j = 0; j < 2; j++)
   val = bcmenet_sw_mdio_read(priv, external_phy,
         port->phy_id, MII_BMSR);

  if (val == 0xffff)
   continue;

  up = (val & BMSR_LSTATUS) ? 1 : 0;
  if (!(up ^ priv->sw_port_link[i]))
   continue;

  priv->sw_port_link[i] = up;


  if (!up) {
   dev_info(&priv->pdev->dev, "link DOWN on %s\n",
     port->name);
   enetsw_writeb(priv, ENETSW_PORTOV_ENABLE_MASK,
          ENETSW_PORTOV_REG(i));
   enetsw_writeb(priv, ENETSW_PTCTRL_RXDIS_MASK |
          ENETSW_PTCTRL_TXDIS_MASK,
          ENETSW_PTCTRL_REG(i));
   continue;
  }

  advertise = bcmenet_sw_mdio_read(priv, external_phy,
       port->phy_id, MII_ADVERTISE);

  lpa = bcmenet_sw_mdio_read(priv, external_phy, port->phy_id,
        MII_LPA);


  media = mii_nway_result(lpa & advertise);
  duplex = (media & ADVERTISE_FULL) ? 1 : 0;

  if (media & (ADVERTISE_100FULL | ADVERTISE_100HALF))
   speed = 100;
  else
   speed = 10;

  if (val & BMSR_ESTATEN) {
   advertise = bcmenet_sw_mdio_read(priv, external_phy,
      port->phy_id, MII_CTRL1000);

   lpa = bcmenet_sw_mdio_read(priv, external_phy,
      port->phy_id, MII_STAT1000);

   if (advertise & (ADVERTISE_1000FULL | ADVERTISE_1000HALF)
     && lpa & (LPA_1000FULL | LPA_1000HALF)) {
    speed = 1000;
    duplex = (lpa & LPA_1000FULL);
   }
  }

  dev_info(&priv->pdev->dev,
    "link UP on %s, %dMbps, %s-duplex\n",
    port->name, speed, duplex ? "full" : "half");

  override = ENETSW_PORTOV_ENABLE_MASK |
   ENETSW_PORTOV_LINKUP_MASK;

  if (speed == 1000)
   override |= ENETSW_IMPOV_1000_MASK;
  else if (speed == 100)
   override |= ENETSW_IMPOV_100_MASK;
  if (duplex)
   override |= ENETSW_IMPOV_FDX_MASK;

  enetsw_writeb(priv, override, ENETSW_PORTOV_REG(i));
  enetsw_writeb(priv, 0, ENETSW_PTCTRL_REG(i));
 }

 priv->swphy_poll.expires = jiffies + HZ;
 add_timer(&priv->swphy_poll);
}
