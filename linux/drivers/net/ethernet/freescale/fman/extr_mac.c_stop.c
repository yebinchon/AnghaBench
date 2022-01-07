
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_priv_s {int (* disable ) (int ,int ) ;} ;
struct mac_device {int fman_mac; scalar_t__ phy_dev; struct mac_priv_s* priv; } ;


 int COMM_MODE_RX_AND_TX ;
 int phy_stop (scalar_t__) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int stop(struct mac_device *mac_dev)
{
 struct mac_priv_s *priv = mac_dev->priv;

 if (mac_dev->phy_dev)
  phy_stop(mac_dev->phy_dev);

 return priv->disable(mac_dev->fman_mac, COMM_MODE_RX_AND_TX);
}
