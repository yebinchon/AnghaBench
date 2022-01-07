
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mac_priv_s {int (* enable ) (int ,int ) ;} ;
struct mac_device {int fman_mac; struct mac_priv_s* priv; struct phy_device* phy_dev; } ;


 int COMM_MODE_RX_AND_TX ;
 int phy_start (struct phy_device*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int start(struct mac_device *mac_dev)
{
 int err;
 struct phy_device *phy_dev = mac_dev->phy_dev;
 struct mac_priv_s *priv = mac_dev->priv;

 err = priv->enable(mac_dev->fman_mac, COMM_MODE_RX_AND_TX);
 if (!err && phy_dev)
  phy_start(phy_dev);

 return err;
}
