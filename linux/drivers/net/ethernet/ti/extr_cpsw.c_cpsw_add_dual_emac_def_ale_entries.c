
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_slave {int port_vlan; } ;
struct cpsw_priv {int mac_addr; TYPE_1__* ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {scalar_t__ version; int ale; } ;
struct TYPE_2__ {int broadcast; } ;


 int ALE_PORT_DROP_UNKNOWN_VLAN ;
 int ALE_PORT_HOST ;
 int ALE_SECURE ;
 int ALE_VLAN ;
 int CPSW1_PORT_VLAN ;
 int CPSW2_PORT_VLAN ;
 scalar_t__ CPSW_VERSION_1 ;
 int HOST_PORT_NUM ;
 int cpsw_ale_add_mcast (int ,int ,int,int,int ,int ) ;
 int cpsw_ale_add_ucast (int ,int ,int ,int,int ) ;
 int cpsw_ale_add_vlan (int ,int ,int,int,int,int ) ;
 int cpsw_ale_control_set (int ,int,int ,int) ;
 int slave_write (struct cpsw_slave*,int ,int ) ;

__attribute__((used)) static inline void cpsw_add_dual_emac_def_ale_entries(
  struct cpsw_priv *priv, struct cpsw_slave *slave,
  u32 slave_port)
{
 struct cpsw_common *cpsw = priv->cpsw;
 u32 port_mask = 1 << slave_port | ALE_PORT_HOST;

 if (cpsw->version == CPSW_VERSION_1)
  slave_write(slave, slave->port_vlan, CPSW1_PORT_VLAN);
 else
  slave_write(slave, slave->port_vlan, CPSW2_PORT_VLAN);
 cpsw_ale_add_vlan(cpsw->ale, slave->port_vlan, port_mask,
     port_mask, port_mask, 0);
 cpsw_ale_add_mcast(cpsw->ale, priv->ndev->broadcast,
      ALE_PORT_HOST, ALE_VLAN, slave->port_vlan, 0);
 cpsw_ale_add_ucast(cpsw->ale, priv->mac_addr,
      HOST_PORT_NUM, ALE_VLAN |
      ALE_SECURE, slave->port_vlan);
 cpsw_ale_control_set(cpsw->ale, slave_port,
        ALE_PORT_DROP_UNKNOWN_VLAN, 1);
}
