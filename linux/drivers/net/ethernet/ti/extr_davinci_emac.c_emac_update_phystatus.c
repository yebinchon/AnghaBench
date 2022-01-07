
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {TYPE_1__* phydev; } ;
struct emac_priv {int duplex; scalar_t__ speed; scalar_t__ version; scalar_t__ link; scalar_t__ rmii_en; struct net_device* ndev; } ;
struct TYPE_2__ {int duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EMAC_DM646X_MACCONTORL_GIG ;
 int EMAC_DM646X_MACCONTORL_GIGFORCE ;
 int EMAC_MACCONTROL ;
 int EMAC_MACCONTROL_FULLDUPLEXEN ;
 int EMAC_MACCONTROL_RMIISPEED_MASK ;
 scalar_t__ EMAC_VERSION_2 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int emac_read (int ) ;
 int emac_write (int ,int) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void emac_update_phystatus(struct emac_priv *priv)
{
 u32 mac_control;
 u32 new_duplex;
 u32 cur_duplex;
 struct net_device *ndev = priv->ndev;

 mac_control = emac_read(EMAC_MACCONTROL);
 cur_duplex = (mac_control & EMAC_MACCONTROL_FULLDUPLEXEN) ?
   DUPLEX_FULL : DUPLEX_HALF;
 if (ndev->phydev)
  new_duplex = ndev->phydev->duplex;
 else
  new_duplex = DUPLEX_FULL;


 if ((priv->link) && (new_duplex != cur_duplex)) {
  priv->duplex = new_duplex;
  if (DUPLEX_FULL == priv->duplex)
   mac_control |= (EMAC_MACCONTROL_FULLDUPLEXEN);
  else
   mac_control &= ~(EMAC_MACCONTROL_FULLDUPLEXEN);
 }

 if (priv->speed == SPEED_1000 && (priv->version == EMAC_VERSION_2)) {
  mac_control = emac_read(EMAC_MACCONTROL);
  mac_control |= (EMAC_DM646X_MACCONTORL_GIG |
    EMAC_DM646X_MACCONTORL_GIGFORCE);
 } else {

  mac_control &= ~(EMAC_DM646X_MACCONTORL_GIGFORCE |
     EMAC_DM646X_MACCONTORL_GIG);

  if (priv->rmii_en && (priv->speed == SPEED_100))
   mac_control |= EMAC_MACCONTROL_RMIISPEED_MASK;
  else
   mac_control &= ~EMAC_MACCONTROL_RMIISPEED_MASK;
 }


 emac_write(EMAC_MACCONTROL, mac_control);

 if (priv->link) {

  if (!netif_carrier_ok(ndev))
   netif_carrier_on(ndev);

  if (netif_running(ndev) && netif_queue_stopped(ndev))
   netif_wake_queue(ndev);
 } else {

  if (netif_carrier_ok(ndev))
   netif_carrier_off(ndev);
  if (!netif_queue_stopped(ndev))
   netif_stop_queue(ndev);
 }
}
