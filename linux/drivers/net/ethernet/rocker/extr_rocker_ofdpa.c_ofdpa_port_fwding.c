
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ofdpa_port {scalar_t__ stp_state; int dev; int vlan_bitmap; int pport; } ;
typedef int __be16 ;


 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ BR_STATE_LEARNING ;
 int OFDPA_OP_FLAG_REMOVE ;
 int VLAN_N_VID ;
 int htons (int) ;
 int netdev_err (int ,char*,int,int ) ;
 int ofdpa_group_l2_interface (struct ofdpa_port*,int,int ,int ,int) ;
 int ofdpa_vlan_id_is_internal (int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int ofdpa_port_fwding(struct ofdpa_port *ofdpa_port, int flags)
{
 bool pop_vlan;
 u32 out_pport;
 __be16 vlan_id;
 u16 vid;
 int err;
 if (ofdpa_port->stp_state != BR_STATE_LEARNING &&
     ofdpa_port->stp_state != BR_STATE_FORWARDING)
  flags |= OFDPA_OP_FLAG_REMOVE;

 out_pport = ofdpa_port->pport;
 for (vid = 1; vid < VLAN_N_VID; vid++) {
  if (!test_bit(vid, ofdpa_port->vlan_bitmap))
   continue;
  vlan_id = htons(vid);
  pop_vlan = ofdpa_vlan_id_is_internal(vlan_id);
  err = ofdpa_group_l2_interface(ofdpa_port, flags,
            vlan_id, out_pport, pop_vlan);
  if (err) {
   netdev_err(ofdpa_port->dev, "Error (%d) port VLAN l2 group for pport %d\n",
       err, out_pport);
   return err;
  }
 }

 return 0;
}
