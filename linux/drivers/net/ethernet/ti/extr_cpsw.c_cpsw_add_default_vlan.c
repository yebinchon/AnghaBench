
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_priv {TYPE_3__* ndev; struct cpsw_common* cpsw; } ;
struct TYPE_5__ {int default_vlan; int slaves; } ;
struct cpsw_common {scalar_t__ version; int ale; scalar_t__ slaves; TYPE_2__ data; TYPE_1__* host_port_regs; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {int port_vlan; } ;


 int ALE_ALL_PORTS ;
 int ALE_PORT_1 ;
 int ALE_PORT_2 ;
 int CPSW1_PORT_VLAN ;
 int CPSW2_PORT_VLAN ;
 scalar_t__ CPSW_VERSION_1 ;
 int IFF_ALLMULTI ;
 int cpsw_ale_add_vlan (int ,int const,int,int,int,int) ;
 int slave_write (scalar_t__,int const,int ) ;
 int writel (int const,int *) ;

__attribute__((used)) static inline void cpsw_add_default_vlan(struct cpsw_priv *priv)
{
 struct cpsw_common *cpsw = priv->cpsw;
 const int vlan = cpsw->data.default_vlan;
 u32 reg;
 int i;
 int unreg_mcast_mask;

 reg = (cpsw->version == CPSW_VERSION_1) ? CPSW1_PORT_VLAN :
        CPSW2_PORT_VLAN;

 writel(vlan, &cpsw->host_port_regs->port_vlan);

 for (i = 0; i < cpsw->data.slaves; i++)
  slave_write(cpsw->slaves + i, vlan, reg);

 if (priv->ndev->flags & IFF_ALLMULTI)
  unreg_mcast_mask = ALE_ALL_PORTS;
 else
  unreg_mcast_mask = ALE_PORT_1 | ALE_PORT_2;

 cpsw_ale_add_vlan(cpsw->ale, vlan, ALE_ALL_PORTS,
     ALE_ALL_PORTS, ALE_ALL_PORTS,
     unreg_mcast_mask);
}
