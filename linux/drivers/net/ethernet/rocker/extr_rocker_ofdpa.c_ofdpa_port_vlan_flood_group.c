
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ofdpa_port {int dev; int pport; int vlan_bitmap; struct ofdpa* ofdpa; } ;
struct ofdpa {TYPE_1__* rocker; } ;
typedef int __be16 ;
struct TYPE_2__ {unsigned int port_count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ROCKER_GROUP_L2_FLOOD (int ,int ) ;
 int ROCKER_GROUP_L2_INTERFACE (int ,int ) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int netdev_err (int ,char*,int) ;
 int ntohs (int ) ;
 int ofdpa_group_l2_flood (struct ofdpa_port*,int,int ,scalar_t__,int *,int ) ;
 struct ofdpa_port* ofdpa_port_get (struct ofdpa const*,int) ;
 int ofdpa_port_is_bridged (struct ofdpa_port*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ofdpa_port_vlan_flood_group(struct ofdpa_port *ofdpa_port,
           int flags, __be16 vlan_id)
{
 struct ofdpa_port *p;
 const struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 unsigned int port_count = ofdpa->rocker->port_count;
 u32 group_id = ROCKER_GROUP_L2_FLOOD(vlan_id, 0);
 u32 *group_ids;
 u8 group_count = 0;
 int err = 0;
 int i;

 group_ids = kcalloc(port_count, sizeof(u32), GFP_KERNEL);
 if (!group_ids)
  return -ENOMEM;






 for (i = 0; i < port_count; i++) {
  p = ofdpa_port_get(ofdpa, i);
  if (!p)
   continue;
  if (!ofdpa_port_is_bridged(p))
   continue;
  if (test_bit(ntohs(vlan_id), p->vlan_bitmap)) {
   group_ids[group_count++] =
    ROCKER_GROUP_L2_INTERFACE(vlan_id, p->pport);
  }
 }


 if (group_count == 0)
  goto no_ports_in_vlan;

 err = ofdpa_group_l2_flood(ofdpa_port, flags, vlan_id,
       group_count, group_ids, group_id);
 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) port VLAN l2 flood group\n", err);

no_ports_in_vlan:
 kfree(group_ids);
 return err;
}
