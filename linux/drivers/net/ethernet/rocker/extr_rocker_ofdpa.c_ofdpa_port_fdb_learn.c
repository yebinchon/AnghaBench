
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {int pport; } ;
struct ofdpa_fdb_learn_work {int flags; int work; int vid; int addr; struct ofdpa_port* ofdpa_port; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef int __be16 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int OFDPA_OP_FLAG_REFRESH ;
 int ROCKER_GROUP_L2_INTERFACE (int ,int ) ;
 int ROCKER_GROUP_NONE ;
 int ROCKER_OF_DPA_TABLE_ID_ACL_POLICY ;
 int ether_addr_copy (int ,int const*) ;
 struct ofdpa_fdb_learn_work* kzalloc (int,int ) ;
 int ofdpa_flow_tbl_bridge (struct ofdpa_port*,int,int const*,int *,int ,int ,int,int ,int) ;
 int ofdpa_port_fdb_learn_work ;
 scalar_t__ ofdpa_port_is_bridged (struct ofdpa_port*) ;
 int ofdpa_port_vlan_to_vid (struct ofdpa_port*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ofdpa_port_fdb_learn(struct ofdpa_port *ofdpa_port,
    int flags, const u8 *addr, __be16 vlan_id)
{
 struct ofdpa_fdb_learn_work *lw;
 enum rocker_of_dpa_table_id goto_tbl =
   ROCKER_OF_DPA_TABLE_ID_ACL_POLICY;
 u32 out_pport = ofdpa_port->pport;
 u32 tunnel_id = 0;
 u32 group_id = ROCKER_GROUP_NONE;
 bool copy_to_cpu = 0;
 int err;

 if (ofdpa_port_is_bridged(ofdpa_port))
  group_id = ROCKER_GROUP_L2_INTERFACE(vlan_id, out_pport);

 if (!(flags & OFDPA_OP_FLAG_REFRESH)) {
  err = ofdpa_flow_tbl_bridge(ofdpa_port, flags, addr,
         ((void*)0), vlan_id, tunnel_id, goto_tbl,
         group_id, copy_to_cpu);
  if (err)
   return err;
 }

 if (!ofdpa_port_is_bridged(ofdpa_port))
  return 0;

 lw = kzalloc(sizeof(*lw), GFP_ATOMIC);
 if (!lw)
  return -ENOMEM;

 INIT_WORK(&lw->work, ofdpa_port_fdb_learn_work);

 lw->ofdpa_port = ofdpa_port;
 lw->flags = flags;
 ether_addr_copy(lw->addr, addr);
 lw->vid = ofdpa_port_vlan_to_vid(ofdpa_port, vlan_id);

 schedule_work(&lw->work);
 return 0;
}
