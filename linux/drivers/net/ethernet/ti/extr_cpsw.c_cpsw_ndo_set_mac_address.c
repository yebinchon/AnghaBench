
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct cpsw_priv {size_t emac_port; int mac_addr; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int dev; int ale; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {int port_vlan; } ;


 int ALE_VLAN ;
 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int HOST_PORT_NUM ;
 int cpsw_ale_add_ucast (int ,int ,int ,int,int ) ;
 int cpsw_ale_del_ucast (int ,int ,int ,int,int ) ;
 int cpsw_set_slave_mac ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_priv*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int cpsw_ndo_set_mac_address(struct net_device *ndev, void *p)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct sockaddr *addr = (struct sockaddr *)p;
 struct cpsw_common *cpsw = priv->cpsw;
 int flags = 0;
 u16 vid = 0;
 int ret;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = pm_runtime_get_sync(cpsw->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(cpsw->dev);
  return ret;
 }

 if (cpsw->data.dual_emac) {
  vid = cpsw->slaves[priv->emac_port].port_vlan;
  flags = ALE_VLAN;
 }

 cpsw_ale_del_ucast(cpsw->ale, priv->mac_addr, HOST_PORT_NUM,
      flags, vid);
 cpsw_ale_add_ucast(cpsw->ale, addr->sa_data, HOST_PORT_NUM,
      flags, vid);

 memcpy(priv->mac_addr, addr->sa_data, ETH_ALEN);
 memcpy(ndev->dev_addr, priv->mac_addr, ETH_ALEN);
 for_each_slave(priv, cpsw_set_slave_mac, priv);

 pm_runtime_put(cpsw->dev);

 return 0;
}
