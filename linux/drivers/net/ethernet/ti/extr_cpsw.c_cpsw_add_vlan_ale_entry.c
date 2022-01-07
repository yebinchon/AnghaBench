
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_priv {int emac_port; int mac_addr; TYPE_2__* ndev; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int ale; TYPE_1__ data; } ;
struct TYPE_4__ {int flags; int broadcast; } ;


 void* ALE_ALL_PORTS ;
 int ALE_PORT_1 ;
 int ALE_PORT_2 ;
 int ALE_PORT_HOST ;
 int ALE_VLAN ;
 int HOST_PORT_NUM ;
 int IFF_ALLMULTI ;
 int cpsw_ale_add_mcast (int ,int ,int,int ,unsigned short,int ) ;
 int cpsw_ale_add_ucast (int ,int ,int ,int ,unsigned short) ;
 int cpsw_ale_add_vlan (int ,unsigned short,int,int ,int,int) ;
 int cpsw_ale_del_ucast (int ,int ,int ,int ,unsigned short) ;
 int cpsw_ale_del_vlan (int ,unsigned short,int ) ;

__attribute__((used)) static inline int cpsw_add_vlan_ale_entry(struct cpsw_priv *priv,
    unsigned short vid)
{
 int ret;
 int unreg_mcast_mask = 0;
 int mcast_mask;
 u32 port_mask;
 struct cpsw_common *cpsw = priv->cpsw;

 if (cpsw->data.dual_emac) {
  port_mask = (1 << (priv->emac_port + 1)) | ALE_PORT_HOST;

  mcast_mask = ALE_PORT_HOST;
  if (priv->ndev->flags & IFF_ALLMULTI)
   unreg_mcast_mask = mcast_mask;
 } else {
  port_mask = ALE_ALL_PORTS;
  mcast_mask = port_mask;

  if (priv->ndev->flags & IFF_ALLMULTI)
   unreg_mcast_mask = ALE_ALL_PORTS;
  else
   unreg_mcast_mask = ALE_PORT_1 | ALE_PORT_2;
 }

 ret = cpsw_ale_add_vlan(cpsw->ale, vid, port_mask, 0, port_mask,
    unreg_mcast_mask);
 if (ret != 0)
  return ret;

 ret = cpsw_ale_add_ucast(cpsw->ale, priv->mac_addr,
     HOST_PORT_NUM, ALE_VLAN, vid);
 if (ret != 0)
  goto clean_vid;

 ret = cpsw_ale_add_mcast(cpsw->ale, priv->ndev->broadcast,
     mcast_mask, ALE_VLAN, vid, 0);
 if (ret != 0)
  goto clean_vlan_ucast;
 return 0;

clean_vlan_ucast:
 cpsw_ale_del_ucast(cpsw->ale, priv->mac_addr,
      HOST_PORT_NUM, ALE_VLAN, vid);
clean_vid:
 cpsw_ale_del_vlan(cpsw->ale, vid, 0);
 return ret;
}
