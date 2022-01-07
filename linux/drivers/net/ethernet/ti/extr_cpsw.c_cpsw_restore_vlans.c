
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cpsw_priv {int ndev; } ;


 int cpsw_ndo_vlan_rx_add_vid (int ,int ,int) ;

__attribute__((used)) static int cpsw_restore_vlans(struct net_device *vdev, int vid, void *arg)
{
 struct cpsw_priv *priv = arg;

 if (!vdev)
  return 0;

 cpsw_ndo_vlan_rx_add_vid(priv->ndev, 0, vid);
 return 0;
}
