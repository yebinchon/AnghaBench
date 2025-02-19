
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int speed; int link; } ;
struct mac_device {TYPE_1__* priv; struct fman_mac* fman_mac; struct phy_device* phy_dev; } ;
struct fman_mac {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int) ;
 int dtsec_adjust_link (struct fman_mac*,int ) ;
 int dtsec_restart_autoneg (struct fman_mac*) ;
 int fman_get_pause_cfg (struct mac_device*,int*,int*) ;
 int fman_set_mac_active_pause (struct mac_device*,int,int) ;

__attribute__((used)) static void adjust_link_dtsec(struct mac_device *mac_dev)
{
 struct phy_device *phy_dev = mac_dev->phy_dev;
 struct fman_mac *fman_mac;
 bool rx_pause, tx_pause;
 int err;

 fman_mac = mac_dev->fman_mac;
 if (!phy_dev->link) {
  dtsec_restart_autoneg(fman_mac);

  return;
 }

 dtsec_adjust_link(fman_mac, phy_dev->speed);
 fman_get_pause_cfg(mac_dev, &rx_pause, &tx_pause);
 err = fman_set_mac_active_pause(mac_dev, rx_pause, tx_pause);
 if (err < 0)
  dev_err(mac_dev->priv->dev, "fman_set_mac_active_pause() = %d\n",
   err);
}
